// file name: inst_test.h
#include <cpu_cde.h>

/* clang-format off */
inst_error:
   li k0, 1
   li v0, GPIO_ADDR
   sb k0, 0(v0)
1: b 1b
   nop
/* clang-format on */

/* 1 */
#define TEST_LL(                                \
    data, base_addr, offset, offset_align, ref) \
  LI(t1, data);                                 \
  LI(t0, base_addr);                            \
  LI(v1, ref);                                  \
  sw t1, offset_align(t0);                      \
  addiu a0, t0, 4;                              \
  addiu a1, t0, -8;                             \
  sw a0, offset_align(a0);                      \
  sw a1, offset_align(a1);                      \
  ll v0, offset(t0);                            \
  lw a1, offset_align(a0);                      \
  lw a0, offset_align(a1);                      \
  lw a2, offset_align(a1);                      \
  bne v0, v1, inst_error;                       \
  nop

/* 2 */
#define TEST_SC(                                \
    data, base_addr, offset, offset_align, ref) \
  LI(t1, data);                                 \
  LI(t0, base_addr);                            \
  LI(v1, ref);                                  \
  sc t1, offset(t0);                            \
  addiu a0, t0, 4;                              \
  addiu a1, t0, -4;                             \
  sw a0, offset(a0);                            \
  sw a1, offset(a1);                            \
  lw v0, offset_align(t0);                      \
  lw a0, offset(a1);                            \
  lw a1, offset(a0);                            \
  lw a2, offset(a1);                            \
  bne v0, v1, inst_error;                       \
  nop;                                          \
  li v1, 1;                                     \
  bne t1, v1, inst_error;                       \
  nop

/* 3 */
#define TEST_MADD(                            \
    in_lo, in_hi, in_a, in_b, ref_lo, ref_hi) \
  li t0, in_lo;                               \
  mtlo t0;                                    \
  li t1, in_hi;                               \
  mthi t1;                                    \
  li t0, in_a;                                \
  li t1, in_b;                                \
  madd t0, t1;                                \
  mflo s5;                                    \
  mfhi s6;                                    \
  li v0, ref_lo;                              \
  li v1, ref_hi;                              \
  bne v0, s5, inst_error;                     \
  nop;                                        \
  bne v1, s6, inst_error;                     \
  nop

/* 4 */
#define TEST_MADDU(                           \
    in_lo, in_hi, in_a, in_b, ref_lo, ref_hi) \
  li t0, in_lo;                               \
  mtlo t0;                                    \
  li t1, in_hi;                               \
  mthi t1;                                    \
  li t0, in_a;                                \
  li t1, in_b;                                \
  maddu t0, t1;                               \
  mflo s5;                                    \
  mfhi s6;                                    \
  li v0, ref_lo;                              \
  li v1, ref_hi;                              \
  bne v0, s5, inst_error;                     \
  nop;                                        \
  bne v1, s6, inst_error;                     \
  nop

/* 5 */
#define TEST_MSUB(                            \
    in_lo, in_hi, in_a, in_b, ref_lo, ref_hi) \
  li t0, in_lo;                               \
  mtlo t0;                                    \
  li t1, in_hi;                               \
  mthi t1;                                    \
  li t0, in_a;                                \
  li t1, in_b;                                \
  msub t0, t1;                                \
  mflo s5;                                    \
  mfhi s6;                                    \
  li v0, ref_lo;                              \
  li v1, ref_hi;                              \
  bne v0, s5, inst_error;                     \
  nop;                                        \
  bne v1, s6, inst_error;                     \
  nop

/* 6 */
#define TEST_MSUBU(                           \
    in_lo, in_hi, in_a, in_b, ref_lo, ref_hi) \
  li t0, in_lo;                               \
  mtlo t0;                                    \
  li t1, in_hi;                               \
  mthi t1;                                    \
  li t0, in_a;                                \
  li t1, in_b;                                \
  msubu t0, t1;                               \
  mflo s5;                                    \
  mfhi s6;                                    \
  li v0, ref_lo;                              \
  li v1, ref_hi;                              \
  bne v0, s5, inst_error;                     \
  nop;                                        \
  bne v1, s6, inst_error;                     \
  nop

#define TEST_SEB(in, out) \
  li t0, in;              \
  seb t1, t0;             \
  li t2, out;             \
  bne t1, t2, inst_error; \
  nop;

#define TEST_SEH(in, out) \
  li t0, in;              \
  seh t1, t0;             \
  li t2, out;             \
  bne t1, t2, inst_error; \
  nop;

#define TEST_WSBH(in, out) \
  li t0, in;               \
  wsbh t1, t0;             \
  li t2, out;              \
  bne t1, t2, inst_error;  \
  nop;

#define TEST_INS(res, rs, rt, pos, size) \
  li t0, rs;                             \
  li t1, rt;                             \
  ins t1, t0, pos, size;                 \
  li t2, res;                            \
  bne t2, t1, inst_error;                \
  nop

#define TEST_EXT(res, rs, pos, size) \
  li t0, rs;                         \
  ext t1, t0, pos, size;             \
  li t2, res;                        \
  bne t2, t1, inst_error;            \
  nop

#define TEST_MFC1(in_a, ref) \
  li t0, in_a;               \
  mtc1 t0, $1;               \
  nop;                       \
  nop;                       \
  nop;                       \
  mfc1 v0, $1;               \
  nop;                       \
  nop;                       \
  nop;                       \
  li s5, ref;                \
  bne v0, s5, inst_error;    \
  nop

#define TEST_MTC1(in_a, ref) \
  li t0, in_a;               \
  mtc1 t0, $1;               \
  nop;                       \
  nop;                       \
  nop;                       \
  mfc1 v0, $1;               \
  nop;                       \
  nop;                       \
  nop;                       \
  li s5, ref;                \
  bne v0, s5, inst_error;    \
  nop

#define TEST_LWC1(                              \
    data, base_addr, offset, offset_align, ref) \
  LI(t1, data);                                 \
  LI(t0, base_addr);                            \
  LI(v1, ref);                                  \
  sw t1, offset_align(t0);                      \
  addiu a0, t0, 4;                              \
  addiu a1, t0, -8;                             \
  sw a0, offset_align(a0);                      \
  sw a1, offset_align(a1);                      \
  lwc1 $1, offset(t0);                          \
  mfc1 v0, $1;                                  \
  lw a1, offset_align(a0);                      \
  lw a0, offset_align(a1);                      \
  lw a2, offset_align(a1);                      \
  bne v0, v1, inst_error;                       \
  nop

#define TEST_SWC1(                              \
    data, base_addr, offset, offset_align, ref) \
  LI(t1, data);                                 \
  LI(t0, base_addr);                            \
  LI(v1, ref);                                  \
  mtc1 t1, $1;                                  \
  sw $1, offset(t0);                            \
  addiu a0, t0, 4;                              \
  addiu a1, t0, -4;                             \
  sw a0, offset(a0);                            \
  sw a1, offset(a1);                            \
  lw v0, offset_align(t0);                      \
  lw a0, offset(a1);                            \
  lw a1, offset(a0);                            \
  lw a2, offset(a1);                            \
  bne v0, v1, inst_error;                       \
  nop

#define TEST_LDC1(                                     \
    data_hi, data_lo, base_addr, offset, offset_align) \
  LI(t1, data_lo);                                     \
  LI(t2, data_hi);                                     \
  LI(t0, base_addr);                                   \
  LI(v0, data_lo);                                     \
  LI(v1, data_hi);                                     \
  sw t1, offset_align(t0);                             \
  sw t2, (offset_align + 4)(t0);                       \
  ldc1 $1, offset(t0);                                 \
  mfc1 t4, $0;                                         \
  mfc1 t5, $1;                                         \
  bne v0, t4, inst_error;                              \
  nop;                                                 \
  bne v1, t5, inst_error;                              \
  nop

#define TEST_SDC1(                                     \
    data_hi, data_lo, base_addr, offset, offset_align) \
  LI(t1, data_lo);                                     \
  LI(t2, data_hi);                                     \
  LI(t0, base_addr);                                   \
  LI(v0, data_lo);                                     \
  LI(v1, data_hi);                                     \
  sw t1, offset_align(t0);                             \
  sw t2, (offset_align + 4)(t0);                       \
  mtc1 t1, $0;                                         \
  mtc1 t2, $1;                                         \
  sdc1 $1, offset(t0);                                 \
  mfc1 t4, $0;                                         \
  mfc1 t5, $1;                                         \
  bne v0, t4, inst_error;                              \
  nop;                                                 \
  bne v1, t5, inst_error;                              \
  nop

#define TEST_ADD_S(in_a, in_b, ref) \
  LI(t0, in_a);                     \
  LI(t1, in_b);                     \
  LI(v0, ref);                      \
  mtc1 t0, $0;                      \
  mtc1 t1, $2;                      \
  add.s $f4, $f0, $f2;              \
  mfc1 v1, $4;                      \
  bne v0, v1, inst_error;           \
  nop

#define TEST_ADD_D(in_a, in_b, ref) \
  LI(t0, (in_a >> 32));             \
  LI(t1, (in_a & 0xFFFFFFFF));      \
  LI(t2, (in_b >> 32));             \
  LI(t3, (in_b & 0xFFFFFFFF));      \
  LI(v0, (ref >> 32));              \
  LI(v1, (ref & 0xFFFFFFFF));       \
  mtc1 t0, $1;                      \
  mtc1 t1, $0;                      \
  mtc1 t2, $3;                      \
  mtc1 t3, $2;                      \
  add.d $f4, $f0, $f2;              \
  mfc1 t4, $5;                      \
  mfc1 t5, $4;                      \
  bne v0, t4, inst_error;           \
  nop;                              \
  bne v1, t5, inst_error;           \
  nop

#define TEST_SUB_S(in_a, in_b, ref) \
  LI(t0, in_a);                     \
  LI(t1, in_b);                     \
  LI(v0, ref);                      \
  mtc1 t0, $0;                      \
  mtc1 t1, $2;                      \
  sub.s $f4, $f0, $f2;              \
  mfc1 v1, $4;                      \
  bne v0, v1, inst_error;           \
  nop

#define TEST_SUB_D(in_a, in_b, ref) \
  LI(t0, (in_a >> 32));             \
  LI(t1, (in_a & 0xFFFFFFFF));      \
  LI(t2, (in_b >> 32));             \
  LI(t3, (in_b & 0xFFFFFFFF));      \
  LI(v0, (ref >> 32));              \
  LI(v1, (ref & 0xFFFFFFFF));       \
  mtc1 t0, $1;                      \
  mtc1 t1, $0;                      \
  mtc1 t2, $3;                      \
  mtc1 t3, $2;                      \
  sub.d $f4, $f0, $f2;              \
  mfc1 t4, $5;                      \
  mfc1 t5, $4;                      \
  bne v0, t4, inst_error;           \
  nop;                              \
  bne v1, t5, inst_error;           \
  nop

#define TEST_MUL_S(in_a, in_b, ref) \
  LI(t0, in_a);                     \
  LI(t1, in_b);                     \
  LI(v0, ref);                      \
  mtc1 t0, $0;                      \
  mtc1 t1, $2;                      \
  mul.s $f4, $f0, $f2;              \
  mfc1 v1, $4;                      \
  bne v0, v1, inst_error;           \
  nop

#define TEST_MUL_D(in_a, in_b, ref) \
  LI(t0, (in_a >> 32));             \
  LI(t1, (in_a & 0xFFFFFFFF));      \
  LI(t2, (in_b >> 32));             \
  LI(t3, (in_b & 0xFFFFFFFF));      \
  LI(v0, (ref >> 32));              \
  LI(v1, (ref & 0xFFFFFFFF));       \
  mtc1 t0, $1;                      \
  mtc1 t1, $0;                      \
  mtc1 t2, $3;                      \
  mtc1 t3, $2;                      \
  mul.d $f4, $f0, $f2;              \
  mfc1 t4, $5;                      \
  mfc1 t5, $4;                      \
  bne v0, t4, inst_error;           \
  nop;                              \
  bne v1, t5, inst_error;           \
  nop

#define TEST_DIV_S(in_a, in_b, ref) \
  LI(t0, in_a);                     \
  LI(t1, in_b);                     \
  LI(v0, ref);                      \
  mtc1 t0, $0;                      \
  mtc1 t1, $2;                      \
  div.s $f4, $f0, $f2;              \
  mfc1 v1, $4;                      \
  bne v0, v1, inst_error;           \
  nop

#define TEST_DIV_D(in_a, in_b, ref) \
  LI(t0, (in_a >> 32));             \
  LI(t1, (in_a & 0xFFFFFFFF));      \
  LI(t2, (in_b >> 32));             \
  LI(t3, (in_b & 0xFFFFFFFF));      \
  LI(v0, (ref >> 32));              \
  LI(v1, (ref & 0xFFFFFFFF));       \
  mtc1 t0, $1;                      \
  mtc1 t1, $0;                      \
  mtc1 t2, $3;                      \
  mtc1 t3, $2;                      \
  div.d $f4, $f0, $f2;              \
  mfc1 t4, $5;                      \
  mfc1 t5, $4;                      \
  bne v0, t4, inst_error;           \
  nop;                              \
  bne v1, t5, inst_error;           \
  nop

#define TEST_SQRT_S(in_a, ref) \
  LI(t0, in_a);                \
  LI(v0, ref);                 \
  mtc1 t0, $0;                 \
  mtc1 t1, $2;                 \
  sqrt.s $f2, $f0;             \
  mfc1 v1, $2;                 \
  bne v0, v1, inst_error;      \
  nop

#define TEST_SQRT_D(in_a, ref) \
  LI(t0, (in_a >> 32));        \
  LI(t1, (in_a & 0xFFFFFFFF)); \
  LI(v0, (ref >> 32));         \
  LI(v1, (ref & 0xFFFFFFFF));  \
  mtc1 t0, $1;                 \
  mtc1 t1, $0;                 \
  sqrt.d $f2, $f0;             \
  mfc1 t4, $3;                 \
  mfc1 t5, $2;                 \
  bne v0, t4, inst_error;      \
  nop;                         \
  bne v1, t5, inst_error;      \
  nop

#define TEST_MOV_S(in_a, ref) \
  LI(t0, in_a);               \
  LI(v0, ref);                \
  mtc1 t0, $0;                \
  mov.s $f2, $f0;             \
  mfc1 v1, $2;                \
  bne v0, v1, inst_error;     \
  nop

#define TEST_MOV_D(in_a, ref)  \
  LI(t0, (in_a >> 32));        \
  LI(t1, (in_a & 0xFFFFFFFF)); \
  LI(v0, (ref >> 32));         \
  LI(v1, (ref & 0xFFFFFFFF));  \
  mtc1 t0, $1;                 \
  mtc1 t1, $0;                 \
  mov.d $f2, $f0;              \
  mfc1 t4, $3;                 \
  mfc1 t5, $2;                 \
  bne v0, t4, inst_error;      \
  nop;                         \
  bne v1, t5, inst_error;      \
  nop

#define TEST_SQRT_S(in_a, ref) \
  LI(t0, in_a);                \
  LI(v0, ref);                 \
  mtc1 t0, $0;                 \
  mtc1 t1, $2;                 \
  sqrt.s $f2, $f0;             \
  mfc1 v1, $2;                 \
  bne v0, v1, inst_error;      \
  nop

#define TEST_SQRT_D(in_a, ref) \
  LI(t0, (in_a >> 32));        \
  LI(t1, (in_a & 0xFFFFFFFF)); \
  LI(v0, (ref >> 32));         \
  LI(v1, (ref & 0xFFFFFFFF));  \
  mtc1 t0, $1;                 \
  mtc1 t1, $0;                 \
  sqrt.d $f2, $f0;             \
  mfc1 t4, $3;                 \
  mfc1 t5, $2;                 \
  bne v0, t4, inst_error;      \
  nop;                         \
  bne v1, t5, inst_error;      \
  nop

#define TEST_MOV_S(in_a, ref) \
  LI(t0, in_a);               \
  LI(v0, ref);                \
  mtc1 t0, $0;                \
  mov.s $f2, $f0;             \
  mfc1 v1, $2;                \
  bne v0, v1, inst_error;     \
  nop

#define TEST_MOV_D(in_a, ref)  \
  LI(t0, (in_a >> 32));        \
  LI(t1, (in_a & 0xFFFFFFFF)); \
  LI(v0, (ref >> 32));         \
  LI(v1, (ref & 0xFFFFFFFF));  \
  mtc1 t0, $1;                 \
  mtc1 t1, $0;                 \
  mov.d $f2, $f0;              \
  mfc1 t4, $3;                 \
  mfc1 t5, $2;                 \
  bne v0, t4, inst_error;      \
  nop;                         \
  bne v1, t5, inst_error;      \
  nop

#define TEST_NEG_S(in_a, ref) \
  LI(t0, in_a);               \
  LI(v0, ref);                \
  mtc1 t0, $0;                \
  neg.s $f2, $f0;             \
  mfc1 v1, $2;                \
  bne v0, v1, inst_error;     \
  nop

#define TEST_NEG_D(in_a, ref)  \
  LI(t0, (in_a >> 32));        \
  LI(t1, (in_a & 0xFFFFFFFF)); \
  LI(v0, (ref >> 32));         \
  LI(v1, (ref & 0xFFFFFFFF));  \
  mtc1 t0, $1;                 \
  mtc1 t1, $0;                 \
  neg.d $f2, $f0;              \
  mfc1 t4, $3;                 \
  mfc1 t5, $2;                 \
  bne v0, t4, inst_error;      \
  nop;                         \
  bne v1, t5, inst_error;      \
  nop
