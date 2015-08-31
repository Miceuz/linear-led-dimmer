# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "/usr/avr/include/avr/io.h" 1 3
# 99 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/avr/include/avr/sfr_defs.h" 3
# 1 "/usr/avr/include/inttypes.h" 1 3
# 37 "/usr/avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 3 4
# 1 "/usr/avr/include/stdint.h" 1 3 4
# 122 "/usr/avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 143 "/usr/avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 160 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 214 "/usr/avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 274 "/usr/avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "/usr/lib/gcc/avr/4.9.2/include/stdint.h" 2 3 4
# 38 "/usr/avr/include/inttypes.h" 2 3
# 77 "/usr/avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/avr/include/avr/io.h" 2 3
# 374 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/iotn25.h" 1 3
# 38 "/usr/avr/include/avr/iotn25.h" 3
# 1 "/usr/avr/include/avr/iotnx5.h" 1 3
# 39 "/usr/avr/include/avr/iotn25.h" 2 3
# 375 "/usr/avr/include/avr/io.h" 2 3
# 538 "/usr/avr/include/avr/io.h" 3
# 1 "/usr/avr/include/avr/portpins.h" 1 3
# 539 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/common.h" 1 3
# 541 "/usr/avr/include/avr/io.h" 2 3

# 1 "/usr/avr/include/avr/version.h" 1 3
# 543 "/usr/avr/include/avr/io.h" 2 3






# 1 "/usr/avr/include/avr/fuse.h" 1 3
# 239 "/usr/avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 550 "/usr/avr/include/avr/io.h" 2 3


# 1 "/usr/avr/include/avr/lock.h" 1 3
# 553 "/usr/avr/include/avr/io.h" 2 3
# 2 "main.c" 2

# 1 "/usr/avr/include/util/delay.h" 1 3
# 43 "/usr/avr/include/util/delay.h" 3
# 1 "/usr/avr/include/util/delay_basic.h" 1 3
# 40 "/usr/avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/usr/avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "/usr/avr/include/util/delay.h" 2 3
# 1 "/usr/avr/include/math.h" 1 3
# 127 "/usr/avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));
extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 194 "/usr/avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/usr/avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/usr/avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/usr/avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "/usr/avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/usr/avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/usr/avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "/usr/avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "/usr/avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "/usr/avr/include/util/delay.h" 2 3
# 84 "/usr/avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/usr/avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((1000000) / 1e3) * __ms;
# 160 "/usr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/usr/avr/include/util/delay.h" 3
}
# 223 "/usr/avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((1000000) / 1e6) * __us;
# 242 "/usr/avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 268 "/usr/avr/include/util/delay.h" 3
}
# 4 "main.c" 2
# 1 "/usr/avr/include/avr/pgmspace.h" 1 3
# 87 "/usr/avr/include/avr/pgmspace.h" 3
# 1 "/usr/lib/gcc/avr/4.9.2/include/stddef.h" 1 3 4
# 212 "/usr/lib/gcc/avr/4.9.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 88 "/usr/avr/include/avr/pgmspace.h" 2 3
# 1064 "/usr/avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));


__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 5 "main.c" 2
# 1 "/usr/avr/include/avr/interrupt.h" 1 3
# 6 "main.c" 2



const uint8_t pwm[] __attribute__((__progmem__)) ={
0,
1,
2,
3,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
13,
14,
15,
16,
17,
18,
19,
20,
21,
22,
23,
24,
25,
25,
26,
27,
28,
29,
30,
31,
32,
33,
34,
35,
36,
36,
37,
38,
39,
40,
41,
42,
43,
44,
45,
45,
46,
47,
48,
49,
50,
51,
52,
53,
54,
55,
55,
56,
57,
58,
59,
60,
61,
62,
63,
65,
66,
67,
68,
69,
70,
71,
72,
73,
74,
75,
77,
78,
79,
80,
81,
82,
84,
85,
86,
87,
88,
90,
91,
92,
93,
95,
96,
97,
99,
100,
101,
103,
104,
105,
107,
108,
109,
111,
112,
114,
115,
117,
118,
119,
121,
122,
124,
125,
127,
128,
130,
131,
133,
135,
136,
138,
139,
141,
142,
144,
146,
147,
149,
151,
152,
154,
156,
157,
159,
161,
162,
164,
166,
168,
169,
171,
173,
175,
176,
178,
180,
182,
184,
186,
187,
189,
191,
193,
195,
197,
199,
201,
203,
205,
207,
209,
211,
213,
215,
217,
219,
221,
223,
225,
227,
229,
231,
233,
235,
237,
239,
241,
244,
246,
248,
250,
252,
255};

inline static void pwmInit() {
 (*(volatile uint8_t *)((0x29) + 0x20)) = 0;
 (*(volatile uint8_t *)((0x17) + 0x20)) |= (1 << (0));
 (*(volatile uint8_t *)((0x2A) + 0x20)) |= (1 << (0)) | (1 << (1)) | (1 << (7));
 (*(volatile uint8_t *)((0x33) + 0x20)) |= (1 << (0));
}

inline static void pwmSet(uint8_t level) {
 (*(volatile uint8_t *)((0x29) + 0x20)) = level;
 if(0 != level) {
  (*(volatile uint8_t *)((0x33) + 0x20)) |= (1 << (0));
 } else {
  (*(volatile uint8_t *)((0x33) + 0x20)) = 0;
 }
}

inline static void encoderInit() {
 (*(volatile uint8_t *)((0x17) + 0x20)) &= ~(1 << (1));
 (*(volatile uint8_t *)((0x17) + 0x20)) &= ~(1 << (2));

}





int8_t encoderRead() {
 static int8_t enc_states[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};

 static uint8_t old_AB = 0;
 old_AB <<= 2;
 uint8_t t = ((( 0 == ((*(volatile uint8_t *)((0x16) + 0x20)) & (1 << (2)))) << 1) | (0 == ((*(volatile uint8_t *)((0x16) + 0x20)) & (1 << (1)))));

 old_AB |= t;
 return ( enc_states[( old_AB & 0x0f )]);
}

volatile uint32_t millis = 0;

uint8_t targetPwm = 0;
uint8_t currentPwm = 0;

void __vector_4 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_4 (void) {
 if(0 == (millis % 5)) {
  if(targetPwm > currentPwm && currentPwm < 254) {
   currentPwm++;
  } else if(targetPwm < currentPwm && currentPwm > 0) {
   currentPwm--;
  }
  pwmSet(currentPwm);
 }
 millis++;
}

void timerInit() {
 (*(volatile uint8_t *)((0x39) + 0x20)) |= (1 << (2));
 (*(volatile uint8_t *)((0x30) + 0x20)) |= (1 << (2)) | (1 << (1));

}

void main() {
 timerInit();
 __asm__ __volatile__ ("sei" ::: "memory");
 pwmInit();
 int16_t i = 0;
 uint32_t lastDetentTimestamp;
 pwmSet(0);
 int8_t encoderPulses = 0;
 while(1) {
  encoderPulses += encoderRead();

  if( encoderPulses > 3 || encoderPulses < -3 ) {
   int8_t encoderStep = encoderPulses / 4;

   if(millis - lastDetentTimestamp < 20) {
    i+= encoderStep*10;
   } else if(millis - lastDetentTimestamp < 30) {
    i+= encoderStep*5;
   } else if(millis - lastDetentTimestamp < 40) {
    i+= encoderStep*2;
   } else {
    i+= encoderStep;
   }
   if(i > 187) {
    i = 187;
   }
   if(i < 0) {
    i = 0;
   }
   targetPwm = (uint8_t) (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&(pwm[i]))); uint8_t __result; __asm__ __volatile__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }));
   lastDetentTimestamp = millis;

   encoderPulses = 0;
  }

 }
}
