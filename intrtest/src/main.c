#include <stdbool.h>
#include <stdint.h>

void writel(uint32_t addr, uint32_t value) {
  *(uint32_t *)addr = value;
}

uint32_t read_c0_status() {
  uint32_t val;
  asm volatile("mfc0 %0, $12" : "=r"(val));
  return val;
}

void write_c0_status(uint32_t val) {
  asm volatile("mtc0 %0, $12" : : "r"(val));
}

uint32_t read_c0_cause() {
  uint32_t val;
  asm volatile("mfc0 %0, $13" : "=r"(val));
  return val;
}

void write_c0_cause(uint32_t val) {
  asm volatile("mtc0 %0, $13" : : "r"(val));
}

uint32_t read_c0_count() {
  uint32_t val;
  asm volatile("mfc0 %0, $9" : "=r"(val));
  return val;
}

void write_c0_compare(uint32_t val) {
  asm volatile("mtc0 %0, $11" : : "r"(val));
}

#define glue_impl(a, b) a##b
#define glue(a, b) glue_impl(a, b)
#define __ glue(_, __LINE__)
typedef struct {
  uint32_t IE : 1;
  uint32_t EXL : 1;
  uint32_t ERL : 1;
  uint32_t R0 : 1;

  uint32_t UM : 1;
  uint32_t UX : 1;
  uint32_t SX : 1;
  uint32_t KX : 1;

  uint32_t IM : 8;

  uint32_t Impl : 2;
  uint32_t __ : 1;
  uint32_t NMI : 1;
  uint32_t SR : 1;
  uint32_t TS : 1;

  uint32_t BEV : 1;
  uint32_t PX : 1;

  uint32_t MX : 1;
  uint32_t RE : 1;
  uint32_t FR : 1;
  uint32_t RP : 1;
  uint32_t CU : 4;
} cp0_status_t;

typedef struct {
  uint32_t __ : 2;
  uint32_t ExcCode : 5;
  uint32_t __ : 1;
  uint32_t IP : 8;

  uint32_t __ : 6;
  uint32_t WP : 1;
  uint32_t IV : 1;

  uint32_t __ : 4;
  uint32_t CE : 2;
  uint32_t __ : 1;
  uint32_t BD : 1;
} cp0_cause_t;
#undef __

typedef struct {
  uint8_t BEV : 1;
  uint8_t IV : 1;
  uint8_t IE : 1;
  uint8_t EXL : 1;
  uint8_t ERL : 1;
} values_t;

extern uint32_t ex_begin;
extern uint32_t ex_end;
register int k1 asm("k1");

void nemu_assert(int cond) {
  if (!cond)
    writel(0xb0000000, 1);
}

void normal_intr(values_t value) {
  uint32_t c0_status_val = read_c0_status();
  uint32_t c0_cause_val = read_c0_cause();

  cp0_status_t *c0_status = (void *)&c0_status_val;
  cp0_cause_t *c0_cause = (void *)&c0_cause_val;

  c0_status->IE = 1;
  c0_status->EXL = 0;
  c0_status->ERL = 0;
  c0_status->IM = 0xFF;
  c0_status->BEV = value.BEV;
  c0_cause->IV = value.IV;
  write_c0_status(c0_status_val);
  write_c0_cause(c0_cause_val);

  uint32_t count = read_c0_count();
  write_c0_compare(count + 20);
  for (int i = 0; i < 20; i++) { asm volatile("nop"); }
}

void resumed_intr(values_t value) {
  uint32_t c0_status_val = read_c0_status();
  uint32_t c0_cause_val = read_c0_cause();

  cp0_status_t *c0_status = (void *)&c0_status_val;
  cp0_cause_t *c0_cause = (void *)&c0_cause_val;

  c0_status->IE = value.IE;
  c0_status->EXL = value.EXL;
  c0_status->ERL = value.ERL;
  c0_status->IM = 0xFF;
  c0_status->BEV = value.BEV;
  c0_cause->IV = value.IV;
  write_c0_status(c0_status_val);
  write_c0_cause(c0_cause_val);

  uint32_t count = read_c0_count();
  write_c0_compare(count + 20);
  for (int i = 0; i < 20; i++) { asm volatile("nop"); }

  c0_status_val = read_c0_status();
  c0_status->IE = 1;
  c0_status->EXL = 0;
  c0_status->ERL = 0;
  c0_status->IM = 0xFF;
  write_c0_status(c0_status_val);
  for (int i = 0; i < 20; i++) { asm volatile("nop"); }
}

void cache_flush(uint32_t addr) {
  asm volatile("cache 0x10, %0" ::"m"(*(uint32_t *)addr));
  asm volatile("cache 0x15, %0" ::"m"(*(uint32_t *)addr));
}

int main() {
  uint32_t addrs[] = {
      0xbfc00200,
      0xbfc00380,
      0xbfc00400,
      0x80000000,
      0x80000180,
      0x80000200,
  };

  for (int i = 0; i < 6; i++) {
    for (uint32_t *p = &ex_begin; p < &ex_end; p ++)
      writel(addrs[i] + 4 * (p - &ex_begin), *p);

    for (int j = 0; j < 16; j += 4)
      cache_flush(addrs[i] + j);
  }

  for (int i = 0; i < 4; i++) {
    values_t *p = (void *)&i;
    k1 = 0;
    normal_intr(*p);
    nemu_assert(k1 == 1);
  }

  for (int i = 0; i < 32; i++) {
    values_t *p = (void *)&i;
    k1 = 0;
    resumed_intr(*p);
    nemu_assert(k1 == 1);
  }
  return 0;
}
