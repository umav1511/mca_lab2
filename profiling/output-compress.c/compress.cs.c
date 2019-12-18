/* "" */
/* "Copyright (C) 1990-2010 Hewlett-Packard Company" */
/* "VEX C compiler version 3.43 (20110131 release)" */
/* "" */
/* "-dir /home/user/tools/vex-3.43 -fmm=/home/user/workspace/assignment2/configuration.mm -width 1 -c99inline -ms -mas_g -mas_G -O3 -o a.out" */

/********************************************/
/*         SYSTEM HEADER                    */
/********************************************/

extern int sim_mem_probe(volatile unsigned int);
extern unsigned int sim_mem_access32(volatile unsigned int);
extern unsigned short sim_mem_access16(volatile unsigned int);
extern unsigned char sim_mem_access8(volatile unsigned int);
extern unsigned long long sim_cycle_counter;
extern unsigned long long sim_stall_counter;
extern unsigned long long sim_branch_stall;
extern unsigned long long sim_bundle_index[];
extern unsigned long long sim_oper_counter;
extern unsigned long long sim_bnt_counter;
extern unsigned long long sim_btc_counter;
extern unsigned long long sim_btu_counter;
extern unsigned long long sim_nop_counter;
extern unsigned int mem_trace_ld(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_st(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_pf(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_lds(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_sts(unsigned int, unsigned int, unsigned int);
extern unsigned int mem_trace_pfs(unsigned int, unsigned int, unsigned int);
extern void sim_ta_init(int);
/*         TRACING HANDLES                */
#define __GOTO(x) /**/
#define __CALL(x) /**/
#define __ENTRY(x) /**/
#define __RETURN(x) /**/
#define __BRANCH(x) /**/
#define __BRANCHF(x) /**/
#define __LABEL(x) /**/
#define __INC_STALL_CNT() sim_stall_counter += sim_branch_stall
#define __INC_BNT_CNT() sim_bnt_counter++
#define __INC_BTC_CNT() sim_btc_counter++
#define __INC_BTU_CNT() sim_btu_counter++
#define __INC_NOP_CNT(n) sim_nop_counter += (n)
#define __INC_BUNDLE_CNT(index) sim_bundle_index[index]++
#define __ADD_CYCLES(cycles)  sim_cycle_counter += (cycles)

typedef struct
{
  char *name;
  int length;
  int init;
  int offset;
  int linesize;
  int rta;
} sim_fileinfo_t;

extern int sim_init_fileinfo(sim_fileinfo_t *);
extern void sim_icache_fetch(int, int);
extern void sim_gprof_enter(int *, char *f);
extern void sim_gprof_start(int *);
extern void sim_gprof_stop(int *);
extern void sim_gprof_exit(int *);
/***********************************************/
/*         MACHINE MODEL HEADER                */
/***********************************************/

#define __UINT8(s)  ((s) & 0xff)
#define __INT8(s)   (((int) ((s) << 24)) >> 24)
#define __UINT16(s) ((s) & 0xffff)
#define __INT16(s)  (((int) ((s) << 16)) >> 16)
#define __UINT32(s) ((unsigned int) (s))
#define __INT32(s)  ((int) (s))


 		 /*  MEMORY MACROS */

#define __ADDR8(a)  ((a) ^ 0x3)
#define __ADDR16(a) ((a) ^ 0x2)
#define __ADDR32(a) (a)
#define __MEM8(a) (*((volatile unsigned char  *)(__ADDR8(a))))
#define __MEM16(a) (*((volatile unsigned short *)(__ADDR16(a))))
#define __MEM32(a) (*((volatile unsigned int *)(__ADDR32(a))))
#define __MEMSPEC8(a) sim_mem_access8(__ADDR8(a))
#define __MEMSPEC16(a) sim_mem_access16(__ADDR16(a))
#define __MEMSPEC32(a) sim_mem_access32(__ADDR32(a))
#define __LDBs(t,s1) t = __INT8(__MEMSPEC8(s1))
#define __LDB(t,s1) t = __INT8(__MEM8(s1))
#define __LDBUs(t,s1) t = __UINT8(__MEMSPEC8(s1))
#define __LDBU(t,s1) t = __UINT8(__MEM8(s1))
#define __LDHs(t,s1) t = __INT16(__MEMSPEC16(s1))
#define __LDH(t,s1) t = __INT16(__MEM16(s1))
#define __LDHUs(t,s1) t = __UINT16(__MEMSPEC16(s1))
#define __LDHU(t,s1) t = __UINT16(__MEM16(s1))
#define __LDWs(t,s1) t = __INT32(__MEMSPEC32(s1))
#define __LDW(t,s1) t = __INT32(__MEM32(s1))
#define __STB(t,s1) __MEM8(t) = __UINT8(s1)
#define __STH(t,s1) __MEM16(t) = __UINT16(s1)
#define __STW(t,s1) __MEM32(t) = __UINT32(s1)


 		 /*  INSTRUCTION MACROS */

#define __MULL(t,s1,s2) t = (s1) * __INT16(s2)
#define __MULLU(t,s1,s2) t = (s1) * __UINT16(s2)
#define __MULH(t,s1,s2) t = (s1) * __INT16((s2) >> 16)
#define __MULHU(t,s1,s2) t = (s1) * __UINT16((s2) >> 16)
#define __MULHS(t,s1,s2) t = ((s1) * __UINT16((s2) >> 16)) << 16
#define __MULLL(t,s1,s2)  t = __INT16(s1) * __INT16(s2)
#define __MULLLU(t,s1,s2) t = __UINT16(s1) * __UINT16(s2)
#define __MULLH(t,s1,s2)  t = __INT16(s1) * __INT16((s2) >> 16)
#define __MULLHU(t,s1,s2) t = __UINT16(s1) * __UINT16((s2) >> 16)
#define __MULHH(t,s1,s2)  t = __INT16((s1) >> 16) * __INT16((s2) >> 16)
#define __MULHHU(t,s1,s2) t = __UINT16((s1) >> 16) * __UINT16((s2) >> 16)
#define __ADD(t,s1,s2) t = (s1) + (s2)
#define __AND(t,s1,s2) t = (s1) & (s2)
#define __ANDC(t,s1,s2) t = ~(s1) & (s2)
#define __ANDL(t,s1,s2) t = ((((s1) == 0) | ((s2) == 0)) ? 0 : 1)
#define __CMPEQ(t,s1,s2) t = ((s1) == (s2))
#define __CMPGE(t,s1,s2) t = ((int) (s1) >= (int) (s2))
#define __CMPGEU(t,s1,s2) t = ((unsigned int) (s1) >= (unsigned int) (s2))
#define __CMPGT(t,s1,s2) t = ((int) (s1) > (int) (s2))
#define __CMPGTU(t,s1,s2) t = ((unsigned int) (s1) > (unsigned int) (s2))
#define __CMPLE(t,s1,s2) t = ((int) (s1) <= (int) (s2))
#define __CMPLEU(t,s1,s2) t = ((unsigned int) (s1) <= (unsigned int) (s2))
#define __CMPLT(t,s1,s2) t = ((int) (s1) < (int) (s2))
#define __CMPLTU(t,s1,s2) t = ((unsigned int) (s1) < (unsigned int) (s2))
#define __CMPNE(t,s1,s2) t = ( (s1) !=  (s2))
#define __MAX(t,s1,s2) t = ((int) (s1) > (int) (s2)) ? (s1) : (s2)
#define __MAXU(t,s1,s2) t = ((unsigned int) (s1) > (unsigned int) (s2)) ? (s1) : (s2)
#define __MIN(t,s1,s2) t = ((int) (s1) < (int) (s2)) ? (s1) : (s2)
#define __MINU(t,s1,s2) t = ((unsigned int) (s1) < (unsigned int) (s2)) ? (s1) : (s2)
#define __MFB(t,s1) t = s1
#define __MFL(t,s1) t = s1
#define __MOV(t,s1) t = s1
#define __MTL(t,s1) t = s1
#define __MTB(t,s1) t = ((s1) == 0) ? 0 : 1
#define __MTBINV(t,s1) t = ((s1) == 0) ? 1 : 0
#define __MUL(t,s1,s2) t = (s1) * (s2)
#define __NANDL(t,s1,s2) t = (((s1) == 0) | ((s2) == 0)) ? 1 : 0
#define __NOP()
#define __NORL(t,s1,s2) t = (((s1) == 0) & ((s2) == 0)) ? 1 : 0
#define __ORL(t,s1,s2) t = (((s1) == 0) & ((s2) == 0)) ? 0 : 1
#define __OR(t,s1,s2) t = (s1) | (s2)
#define __ORC(t,s1,s2) t = (~(s1)) | (s2)
#define __PFT(s1) (s1)
#define __SBIT(t,s1,s2) t = (s1) | ((unsigned int) 1 << (s2))
#define __SBITF(t,s1,s2) t = (s1) & ~((unsigned int) 1 << (s2))
#define __SH1ADD(t,s1,s2) t = ((s1) << 1) + (s2)
#define __SH2ADD(t,s1,s2) t = ((s1) << 2) + (s2)
#define __SH3ADD(t,s1,s2) t = ((s1) << 3) + (s2)
#define __SH4ADD(t,s1,s2) t = ((s1) << 4) + (s2)
#define __SHL(t,s1,s2) t = ((int) (s1)) << (s2)
#define __SHR(t,s1,s2) t = ((int) (s1)) >> (s2)
#define __SHRU(t,s1,s2) t = ((unsigned int) (s1)) >> (s2)
#define __SLCT(t,s1,s2,s3) t = (unsigned int) (((s1) != 0) ? (s2) : (s3))
#define __SLCTF(t,s1,s2,s3) t = (unsigned int) (((s1) == 0) ? (s2) : (s3))
#define __SUB(t,s1,s2) t = (s1) - (s2)
#define __SXTB(t,s1) t = (unsigned int) (((signed int) ((s1) << 24)) >> 24)
#define __SXTH(t,s1) t = (unsigned int) (((signed int) ((s1) << 16)) >> 16)
#define __TBIT(t,s1,s2) t = ((s1) & ((unsigned int) 1 << (s2))) ? 1 : 0
#define __TBITF(t,s1,s2) t = ((s1) & ((unsigned int) 1 << (s2))) ? 0 : 1
#define __XNOP(s1)
#define __XOR(t,s1,s2) t = (s1) ^ (s2)
#define __ZXTB(t,s1) t = ((s1) & 0xff)
#define __ZXTH(t,s1) t = ((s1) & 0xffff)
#define __ADDCG(t,cout,s1,s2,cin) {\
    t = (s1) + (s2) + ((cin) & 0x1);\
    cout =   ((cin) & 0x1)\
           ? ((unsigned int) t <= (unsigned int) (s1))\
           : ((unsigned int) t <  (unsigned int) (s1));\
}
#define __DIVS(t,cout,s1,s2,cin) {\
    unsigned int tmp = ((s1) << 1) | (cin);\
    cout = (unsigned int) (s1) >> 31;\
    t = cout ? tmp + (s2) : tmp - (s2);\
}
static sim_fileinfo_t t_thisfile;
extern void sim_asm_op0(int, ...);
extern unsigned int sim_asm_op1(int, ...);
typedef struct { unsigned int n0,n1; } sim_asm2_t;
extern sim_asm2_t sim_asm_op2(int, ...);
typedef struct { unsigned int n0,n1,n2; } sim_asm3_t;
extern sim_asm3_t sim_asm_op3(int, ...);
typedef struct { unsigned int n0,n1,n2,n3; } sim_asm4_t;
extern sim_asm4_t sim_asm_op4(int, ...);

/*********************************
            BSS SYMBOLS
*********************************/

static unsigned int _X1PACKETX15[3];
unsigned int compress_10686Xoffset[1];
unsigned int compress_10686Xbuf[3];
unsigned int bytes_out[1];
unsigned int bgnd_flag[1];
unsigned int fsize[1];
unsigned int codetab[2502];
unsigned int htab[5003];
unsigned int maxcode[1];
unsigned int n_bits[1];
unsigned int buflen[1];
unsigned int bufp[1];
unsigned int outbuf[1];
unsigned int CompBuf[200];
unsigned int UnComp[210];

/*********************************
            ENTRY SYMBOLS
*********************************/

extern unsigned int __vex_main(  );
extern  Usage(  );
extern unsigned int rindex( unsigned int, unsigned int );
extern unsigned int Compress( unsigned int, unsigned int );
extern unsigned int compressf(  );
extern  output( unsigned int );
extern unsigned int decompress(  );
extern unsigned int compressgetcode(  );
extern unsigned int writeerr(  );
extern unsigned int foreground(  );
extern unsigned int onintr(  );
extern unsigned int oops(  );
extern unsigned int cl_block(  );
extern  cl_hash( unsigned int );
extern unsigned int prratio( unsigned int, unsigned int );
extern unsigned int version(  );
extern  _i_div(  );
extern  _bcopy(  );
extern  puts(  );

/*********************************
            DATA SYMBOLS
*********************************/

static unsigned int _X1PACKETX4[3]; 
static unsigned int _X1STRINGPACKETX1[5]; 
static unsigned int _X1STRINGPACKETX2[10]; 
static unsigned int _X1STRINGPACKETX4[4]; 
static unsigned int _X1XCompressXTAGPACKETX0[52]; 
static unsigned int _X1STRINGPACKETX5[8]; 
static unsigned int _X1STRINGPACKETX6[10]; 
static unsigned int _X1STRINGPACKETX3[5]; 
static unsigned int _X1PACKETX14[1]; 
static unsigned int _X1PACKETX13[1]; 
static unsigned int _X1STRINGPACKETX8[7]; 
static unsigned int _X1STRINGPACKETX9[7]; 
unsigned int compress_10686XBuf[216]; 
unsigned int compress_10686Xrcs_ident[6]; 
unsigned int do_decomp[1]; 
unsigned int quiet[1]; 
unsigned int nomagic[1]; 
unsigned int block_compress[1]; 
unsigned int zcat_flg[1]; 
unsigned int maxbits[1]; 
unsigned int maxmaxcode[1]; 
unsigned int hsize[1]; 
unsigned int magic_header[1]; 
unsigned int free_ent[1]; 
unsigned int checkpoint[1]; 
unsigned int in_count[1]; 
unsigned int ratio[1]; 
unsigned int clear_flg[1]; 
unsigned int out_count[1]; 
unsigned int exit_stat[1]; 
unsigned int lmask[3]; 
unsigned int rmask[3]; 
unsigned int force[1]; 
static unsigned int _X1PACKETX4[3] = { 
	0x436F6D70,
	0x72657373,
	0x00000000
}; 

static unsigned int _X1STRINGPACKETX1[5] = { 
	0x636F6D70,
	0x72657373,
	0x3A207375,
	0x63636573,
	0x730A0000
}; 

static unsigned int _X1STRINGPACKETX2[10] = { 
	0x55736167,
	0x653A2063,
	0x6F6D7072,
	0x65737320,
	0x5B2D6466,
	0x7663565D,
	0x205B2D62,
	0x206D6178,
	0x62697473,
	0x5D200A00
}; 

static unsigned int _X1STRINGPACKETX4[4] = { 
	0x556E6B6E,
	0x6F776E20,
	0x666C6167,
	0x00000000
}; 

static unsigned int _X1XCompressXTAGPACKETX0[52] = { 
	(126 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(140 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(132 << 5),
	(131 << 5),
	(130 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(129 << 5),
	(144 << 5),
	(144 << 5),
	(128 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(144 << 5),
	(127 << 5)
}; 

static unsigned int _X1STRINGPACKETX5[8] = { 
	0x44617461,
	0x206E6F74,
	0x20696E20,
	0x636F6D70,
	0x72657373,
	0x65642066,
	0x6F726D61,
	0x740A0000
}; 

static unsigned int _X1STRINGPACKETX6[10] = { 
	0x73746469,
	0x6E3A2063,
	0x6F6D7072,
	0x65737365,
	0x64207769,
	0x74682074,
	0x6F6F206D,
	0x616E7920,
	0x62697473,
	0x0A000000
}; 

static unsigned int _X1STRINGPACKETX3[5] = { 
	0x4D697373,
	0x696E6720,
	0x6D617862,
	0x6974730A,
	0x00000000
}; 

static unsigned int _X1PACKETX14[1] = { 
	0x00000000
}; 

static unsigned int _X1PACKETX13[1] = { 
	0x00000000
}; 

static unsigned int _X1STRINGPACKETX8[7] = { 
	0x4552524F,
	0x523A2077,
	0x72697465,
	0x72722077,
	0x61732063,
	0x616C6C65,
	0x640A0000
}; 

static unsigned int _X1STRINGPACKETX9[7] = { 
	0x756E636F,
	0x6D707265,
	0x73733A20,
	0x636F7272,
	0x75707420,
	0x696E7075,
	0x740A0000
}; 

unsigned int compress_10686XBuf[216] = { 
	0x2F2A2052,
	0x65706C61,
	0x63656D65,
	0x6E742072,
	0x6F757469,
	0x6E657320,
	0x666F7220,
	0x7374616E,
	0x64617264,
	0x20432072,
	0x6F757469,
	0x6E65732E,
	0x202A2F00,
	0x23646566,
	0x696E6520,
	0x434F4E53,
	0x4F4C4520,
	0x30002369,
	0x666E6465,
	0x66205355,
	0x4E002364,
	0x6566696E,
	0x65207374,
	0x64657272,
	0x20434F4E,
	0x534F4C45,
	0x00236465,
	0x66696E65,
	0x20454F46,
	0x20282D31,
	0x29002365,
	0x6E646966,
	0x202F2A20,
	0x53554E20,
	0x2A2F0000,
	0x23696E63,
	0x6C756465,
	0x20226275,
	0x662E6322,
	0x00006368,
	0x61722A20,
	0x6F757462,
	0x7566203D,
	0x20303B00,
	0x00696E74,
	0x20676574,
	0x63686172,
	0x2829007B,
	0x20737461,
	0x74696320,
	0x63686172,
	0x202A6275,
	0x6670203D,
	0x20427566,
	0x3B002020,
	0x73746174,
	0x69632069,
	0x6E74206E,
	0x203D2042,
	0x75666C65,
	0x6E3B0023,
	0x69666465,
	0x66205445,
	0x53540020,
	0x20696620,
	0x28206E20,
	0x3D3D2030,
	0x2029207B,
	0x2020202F,
	0x2A206275,
	0x66666572,
	0x20697320,
	0x656D7074,
	0x79202A2F,
	0x00202020,
	0x206E203D,
	0x20737472,
	0x746F6C20,
	0x28206275,
	0x66702C20,
	0x26627566,
	0x702C2031,
	0x3020293B,
	0x202F2A20,
	0x72656164,
	0x20636861,
	0x72207369,
	0x7A652066,
	0x726F6D20,
	0x31737420,
	0x73747269,
	0x6E672E20,
	0x2A2F0020,
	0x2020207D,
	0x0023656E,
	0x64696620,
	0x54455354,
	0x00202072,
	0x65747572,
	0x6E202820,
	0x2D2D6E20,
	0x3E3D2030,
	0x2029203F,
	0x2028756E,
	0x7369676E,
	0x65642063,
	0x68617229,
	0x202A6275,
	0x66702B2B,
	0x203A2045,
	0x4F463B00,
	0x7D202000,
	0x002F2A76,
	0x6F696420,
	0x70757463,
	0x68617220,
	0x28206329,
	0x00202063,
	0x68617220,
	0x633B007B,
	0x20002020,
	0x66707269,
	0x6E746628,
	0x73746465,
	0x72722C22,
	0x70757463,
	0x6861723A,
	0x2063203D,
	0x20257820,
	0x5C6E222C,
	0x2063293B,
	0x0020202A,
	0x6F757462,
	0x75662B2B,
	0x203D2063,
	0x3B007D00,
	0x202A2F00,
	0x2369666E,
	0x64656620,
	0x53554E00,
	0x766F6964,
	0x20657869,
	0x74282078,
	0x20290020,
	0x20696E74,
	0x20783B00,
	0x7B002020,
	0x66707269,
	0x6E746620,
	0x28737464,
	0x6572722C,
	0x20226578,
	0x69742830,
	0x78257829,
	0x5C6E222C,
	0x2078293B,
	0x00236966,
	0x64656620,
	0x58494E55,
	0x00202075,
	0x73657272,
	0x65742829,
	0x3B202020,
	0x20202020,
	0x20202020,
	0x20202020,
	0x2F2A204D,
	0x75737420,
	0x6C696E6B,
	0x20776974,
	0x68205849,
	0x4E553F20,
	0x2A2F0023,
	0x656E6469,
	0x66202F2A,
	0x2058494E,
	0x55202A2F,
	0x007D0020,
	0x00696E74,
	0x20707574,
	0x63282064,
	0x65762C20,
	0x20632920,
	0x20202F2A,
	0x20707574,
	0x63206465,
	0x66696E65,
	0x64206275,
	0x2058494E,
	0x552E202A,
	0x2F002020,
	0x696E7420,
	0x6465763B,
	0x00202063,
	0x68617220,
	0x633B007B,
	0x002F2A20,
	0x69662028,
	0x64657620,
	0x3D3D2043,
	0x4F4E534F,
	0x4C452920,
	0x202A2F00,
	0x7D002365,
	0x6E646966,
	0x202F2A20,
	0x53554E20,
	0x2A2F0078,
	0x66660078,
	0x66660078,
	0x66660078,
	0x66660078,
	0x66660078,
	0x66660078,
	0x66660078,
	0x66660000
}; 

unsigned int compress_10686Xrcs_ident[6] = { 
	0x48656164,
	0x65723A20,
	0x636F6D70,
	0x72657373,
	0x2E632C76,
	0x20000000
}; 

unsigned int do_decomp[1] = { 
	0x00000000
}; 

unsigned int quiet[1] = { 
	0x00000001
}; 

unsigned int nomagic[1] = { 
	0x00000000
}; 

unsigned int block_compress[1] = { 
	0x00000080
}; 

unsigned int zcat_flg[1] = { 
	0x00000000
}; 

unsigned int maxbits[1] = { 
	0x0000000C
}; 

unsigned int maxmaxcode[1] = { 
	0x00001000
}; 

unsigned int hsize[1] = { 
	0x0000138B
}; 

unsigned int magic_header[1] = { 
	0x1F9D0000
}; 

unsigned int free_ent[1] = { 
	0x00000000
}; 

unsigned int checkpoint[1] = { 
	0x00002710
}; 

unsigned int in_count[1] = { 
	0x00000001
}; 

unsigned int ratio[1] = { 
	0x00000000
}; 

unsigned int clear_flg[1] = { 
	0x00000000
}; 

unsigned int out_count[1] = { 
	0x00000000
}; 

unsigned int exit_stat[1] = { 
	0x00000000
}; 

unsigned int lmask[3] = { 
	0xFFFEFCF8,
	0xF0E0C080,
	0x00000000
}; 

unsigned int rmask[3] = { 
	0x00010307,
	0x0F1F3F7F,
	0xFF000000
}; 

unsigned int force[1] = { 
	0x00000000
}; 


/*********************************
            TEXT
*********************************/
extern unsigned int sim_create_stack(unsigned int, unsigned int);
extern void sim_check_stack(unsigned int, unsigned int);
extern void sim_bad_label(int);
unsigned int reg_b0_0;
unsigned int reg_b0_1;
unsigned int reg_b0_2;
unsigned int reg_b0_3;
unsigned int reg_b0_4;
unsigned int reg_b0_5;
unsigned int reg_b0_6;
unsigned int reg_b0_7;
unsigned int reg_b0_8;
unsigned int reg_b0_9;
unsigned int reg_b0_10;
unsigned int reg_b0_11;
unsigned int reg_b0_12;
unsigned int reg_b0_13;
unsigned int reg_b0_14;
unsigned int reg_b0_15;
unsigned int reg_b1_0;
unsigned int reg_b1_1;
unsigned int reg_b1_2;
unsigned int reg_b1_3;
unsigned int reg_b1_4;
unsigned int reg_b1_5;
unsigned int reg_b1_6;
unsigned int reg_b1_7;
unsigned int reg_b1_8;
unsigned int reg_b1_9;
unsigned int reg_b1_10;
unsigned int reg_b1_11;
unsigned int reg_b1_12;
unsigned int reg_b1_13;
unsigned int reg_b1_14;
unsigned int reg_b1_15;
unsigned int reg_b2_0;
unsigned int reg_b2_1;
unsigned int reg_b2_2;
unsigned int reg_b2_3;
unsigned int reg_b2_4;
unsigned int reg_b2_5;
unsigned int reg_b2_6;
unsigned int reg_b2_7;
unsigned int reg_b2_8;
unsigned int reg_b2_9;
unsigned int reg_b2_10;
unsigned int reg_b2_11;
unsigned int reg_b2_12;
unsigned int reg_b2_13;
unsigned int reg_b2_14;
unsigned int reg_b2_15;
unsigned int reg_b3_0;
unsigned int reg_b3_1;
unsigned int reg_b3_2;
unsigned int reg_b3_3;
unsigned int reg_b3_4;
unsigned int reg_b3_5;
unsigned int reg_b3_6;
unsigned int reg_b3_7;
unsigned int reg_b3_8;
unsigned int reg_b3_9;
unsigned int reg_b3_10;
unsigned int reg_b3_11;
unsigned int reg_b3_12;
unsigned int reg_b3_13;
unsigned int reg_b3_14;
unsigned int reg_b3_15;
unsigned int reg_l0_0;
unsigned int reg_r0_0;
unsigned int reg_r0_1;
unsigned int reg_r0_2;
unsigned int reg_r0_3;
unsigned int reg_r0_4;
unsigned int reg_r0_5;
unsigned int reg_r0_6;
unsigned int reg_r0_7;
unsigned int reg_r0_8;
unsigned int reg_r0_9;
unsigned int reg_r0_10;
unsigned int reg_r0_11;
unsigned int reg_r0_12;
unsigned int reg_r0_13;
unsigned int reg_r0_14;
unsigned int reg_r0_15;
unsigned int reg_r0_16;
unsigned int reg_r0_17;
unsigned int reg_r0_18;
unsigned int reg_r0_19;
unsigned int reg_r0_20;
unsigned int reg_r0_21;
unsigned int reg_r0_22;
unsigned int reg_r0_23;
unsigned int reg_r0_24;
unsigned int reg_r0_25;
unsigned int reg_r0_26;
unsigned int reg_r0_27;
unsigned int reg_r0_28;
unsigned int reg_r0_29;
unsigned int reg_r0_30;
unsigned int reg_r0_31;
unsigned int reg_r0_32;
unsigned int reg_r0_33;
unsigned int reg_r0_34;
unsigned int reg_r0_35;
unsigned int reg_r0_36;
unsigned int reg_r0_37;
unsigned int reg_r0_38;
unsigned int reg_r0_39;
unsigned int reg_r0_40;
unsigned int reg_r0_41;
unsigned int reg_r0_42;
unsigned int reg_r0_43;
unsigned int reg_r0_44;
unsigned int reg_r0_45;
unsigned int reg_r0_46;
unsigned int reg_r0_47;
unsigned int reg_r0_48;
unsigned int reg_r0_49;
unsigned int reg_r0_50;
unsigned int reg_r0_51;
unsigned int reg_r0_52;
unsigned int reg_r0_53;
unsigned int reg_r0_54;
unsigned int reg_r0_55;
unsigned int reg_r0_56;
unsigned int reg_r0_57;
unsigned int reg_r0_58;
unsigned int reg_r0_59;
unsigned int reg_r0_60;
unsigned int reg_r0_61;
unsigned int reg_r0_62;
unsigned int reg_r0_63;
unsigned int reg_r0_64;
unsigned int reg_r0_65;
unsigned int reg_r0_66;
unsigned int reg_r0_67;
unsigned int reg_r0_68;
unsigned int reg_r0_69;
unsigned int reg_r0_70;
unsigned int reg_r0_71;
unsigned int reg_r0_72;
unsigned int reg_r0_73;
unsigned int reg_r0_74;
unsigned int reg_r0_75;
unsigned int reg_r0_76;
unsigned int reg_r0_77;
unsigned int reg_r0_78;
unsigned int reg_r0_79;
unsigned int reg_r0_80;
unsigned int reg_r0_81;
unsigned int reg_r0_82;
unsigned int reg_r0_83;
unsigned int reg_r0_84;
unsigned int reg_r0_85;
unsigned int reg_r0_86;
unsigned int reg_r0_87;
unsigned int reg_r0_88;
unsigned int reg_r0_89;
unsigned int reg_r0_90;
unsigned int reg_r0_91;
unsigned int reg_r0_92;
unsigned int reg_r0_93;
unsigned int reg_r0_94;
unsigned int reg_r0_95;
unsigned int reg_r0_96;
unsigned int reg_r0_97;
unsigned int reg_r0_98;
unsigned int reg_r0_99;
unsigned int reg_r0_100;
unsigned int reg_r0_101;
unsigned int reg_r0_102;
unsigned int reg_r0_103;
unsigned int reg_r0_104;
unsigned int reg_r0_105;
unsigned int reg_r0_106;
unsigned int reg_r0_107;
unsigned int reg_r0_108;
unsigned int reg_r0_109;
unsigned int reg_r0_110;
unsigned int reg_r0_111;
unsigned int reg_r0_112;
unsigned int reg_r0_113;
unsigned int reg_r0_114;
unsigned int reg_r0_115;
unsigned int reg_r0_116;
unsigned int reg_r0_117;
unsigned int reg_r0_118;
unsigned int reg_r0_119;
unsigned int reg_r0_120;
unsigned int reg_r0_121;
unsigned int reg_r0_122;
unsigned int reg_r0_123;
unsigned int reg_r0_124;
unsigned int reg_r0_125;
unsigned int reg_r0_126;
unsigned int reg_r0_127;
unsigned int reg_r1_0;
unsigned int reg_r1_1;
unsigned int reg_r1_2;
unsigned int reg_r1_3;
unsigned int reg_r1_4;
unsigned int reg_r1_5;
unsigned int reg_r1_6;
unsigned int reg_r1_7;
unsigned int reg_r1_8;
unsigned int reg_r1_9;
unsigned int reg_r1_10;
unsigned int reg_r1_11;
unsigned int reg_r1_12;
unsigned int reg_r1_13;
unsigned int reg_r1_14;
unsigned int reg_r1_15;
unsigned int reg_r1_16;
unsigned int reg_r1_17;
unsigned int reg_r1_18;
unsigned int reg_r1_19;
unsigned int reg_r1_20;
unsigned int reg_r1_21;
unsigned int reg_r1_22;
unsigned int reg_r1_23;
unsigned int reg_r1_24;
unsigned int reg_r1_25;
unsigned int reg_r1_26;
unsigned int reg_r1_27;
unsigned int reg_r1_28;
unsigned int reg_r1_29;
unsigned int reg_r1_30;
unsigned int reg_r1_31;
unsigned int reg_r1_32;
unsigned int reg_r1_33;
unsigned int reg_r1_34;
unsigned int reg_r1_35;
unsigned int reg_r1_36;
unsigned int reg_r1_37;
unsigned int reg_r1_38;
unsigned int reg_r1_39;
unsigned int reg_r1_40;
unsigned int reg_r1_41;
unsigned int reg_r1_42;
unsigned int reg_r1_43;
unsigned int reg_r1_44;
unsigned int reg_r1_45;
unsigned int reg_r1_46;
unsigned int reg_r1_47;
unsigned int reg_r1_48;
unsigned int reg_r1_49;
unsigned int reg_r1_50;
unsigned int reg_r1_51;
unsigned int reg_r1_52;
unsigned int reg_r1_53;
unsigned int reg_r1_54;
unsigned int reg_r1_55;
unsigned int reg_r1_56;
unsigned int reg_r1_57;
unsigned int reg_r1_58;
unsigned int reg_r1_59;
unsigned int reg_r1_60;
unsigned int reg_r1_61;
unsigned int reg_r1_62;
unsigned int reg_r1_63;
unsigned int reg_r1_64;
unsigned int reg_r1_65;
unsigned int reg_r1_66;
unsigned int reg_r1_67;
unsigned int reg_r1_68;
unsigned int reg_r1_69;
unsigned int reg_r1_70;
unsigned int reg_r1_71;
unsigned int reg_r1_72;
unsigned int reg_r1_73;
unsigned int reg_r1_74;
unsigned int reg_r1_75;
unsigned int reg_r1_76;
unsigned int reg_r1_77;
unsigned int reg_r1_78;
unsigned int reg_r1_79;
unsigned int reg_r1_80;
unsigned int reg_r1_81;
unsigned int reg_r1_82;
unsigned int reg_r1_83;
unsigned int reg_r1_84;
unsigned int reg_r1_85;
unsigned int reg_r1_86;
unsigned int reg_r1_87;
unsigned int reg_r1_88;
unsigned int reg_r1_89;
unsigned int reg_r1_90;
unsigned int reg_r1_91;
unsigned int reg_r1_92;
unsigned int reg_r1_93;
unsigned int reg_r1_94;
unsigned int reg_r1_95;
unsigned int reg_r1_96;
unsigned int reg_r1_97;
unsigned int reg_r1_98;
unsigned int reg_r1_99;
unsigned int reg_r1_100;
unsigned int reg_r1_101;
unsigned int reg_r1_102;
unsigned int reg_r1_103;
unsigned int reg_r1_104;
unsigned int reg_r1_105;
unsigned int reg_r1_106;
unsigned int reg_r1_107;
unsigned int reg_r1_108;
unsigned int reg_r1_109;
unsigned int reg_r1_110;
unsigned int reg_r1_111;
unsigned int reg_r1_112;
unsigned int reg_r1_113;
unsigned int reg_r1_114;
unsigned int reg_r1_115;
unsigned int reg_r1_116;
unsigned int reg_r1_117;
unsigned int reg_r1_118;
unsigned int reg_r1_119;
unsigned int reg_r1_120;
unsigned int reg_r1_121;
unsigned int reg_r1_122;
unsigned int reg_r1_123;
unsigned int reg_r1_124;
unsigned int reg_r1_125;
unsigned int reg_r1_126;
unsigned int reg_r1_127;
unsigned int reg_r2_0;
unsigned int reg_r2_1;
unsigned int reg_r2_2;
unsigned int reg_r2_3;
unsigned int reg_r2_4;
unsigned int reg_r2_5;
unsigned int reg_r2_6;
unsigned int reg_r2_7;
unsigned int reg_r2_8;
unsigned int reg_r2_9;
unsigned int reg_r2_10;
unsigned int reg_r2_11;
unsigned int reg_r2_12;
unsigned int reg_r2_13;
unsigned int reg_r2_14;
unsigned int reg_r2_15;
unsigned int reg_r2_16;
unsigned int reg_r2_17;
unsigned int reg_r2_18;
unsigned int reg_r2_19;
unsigned int reg_r2_20;
unsigned int reg_r2_21;
unsigned int reg_r2_22;
unsigned int reg_r2_23;
unsigned int reg_r2_24;
unsigned int reg_r2_25;
unsigned int reg_r2_26;
unsigned int reg_r2_27;
unsigned int reg_r2_28;
unsigned int reg_r2_29;
unsigned int reg_r2_30;
unsigned int reg_r2_31;
unsigned int reg_r2_32;
unsigned int reg_r2_33;
unsigned int reg_r2_34;
unsigned int reg_r2_35;
unsigned int reg_r2_36;
unsigned int reg_r2_37;
unsigned int reg_r2_38;
unsigned int reg_r2_39;
unsigned int reg_r2_40;
unsigned int reg_r2_41;
unsigned int reg_r2_42;
unsigned int reg_r2_43;
unsigned int reg_r2_44;
unsigned int reg_r2_45;
unsigned int reg_r2_46;
unsigned int reg_r2_47;
unsigned int reg_r2_48;
unsigned int reg_r2_49;
unsigned int reg_r2_50;
unsigned int reg_r2_51;
unsigned int reg_r2_52;
unsigned int reg_r2_53;
unsigned int reg_r2_54;
unsigned int reg_r2_55;
unsigned int reg_r2_56;
unsigned int reg_r2_57;
unsigned int reg_r2_58;
unsigned int reg_r2_59;
unsigned int reg_r2_60;
unsigned int reg_r2_61;
unsigned int reg_r2_62;
unsigned int reg_r2_63;
unsigned int reg_r2_64;
unsigned int reg_r2_65;
unsigned int reg_r2_66;
unsigned int reg_r2_67;
unsigned int reg_r2_68;
unsigned int reg_r2_69;
unsigned int reg_r2_70;
unsigned int reg_r2_71;
unsigned int reg_r2_72;
unsigned int reg_r2_73;
unsigned int reg_r2_74;
unsigned int reg_r2_75;
unsigned int reg_r2_76;
unsigned int reg_r2_77;
unsigned int reg_r2_78;
unsigned int reg_r2_79;
unsigned int reg_r2_80;
unsigned int reg_r2_81;
unsigned int reg_r2_82;
unsigned int reg_r2_83;
unsigned int reg_r2_84;
unsigned int reg_r2_85;
unsigned int reg_r2_86;
unsigned int reg_r2_87;
unsigned int reg_r2_88;
unsigned int reg_r2_89;
unsigned int reg_r2_90;
unsigned int reg_r2_91;
unsigned int reg_r2_92;
unsigned int reg_r2_93;
unsigned int reg_r2_94;
unsigned int reg_r2_95;
unsigned int reg_r2_96;
unsigned int reg_r2_97;
unsigned int reg_r2_98;
unsigned int reg_r2_99;
unsigned int reg_r2_100;
unsigned int reg_r2_101;
unsigned int reg_r2_102;
unsigned int reg_r2_103;
unsigned int reg_r2_104;
unsigned int reg_r2_105;
unsigned int reg_r2_106;
unsigned int reg_r2_107;
unsigned int reg_r2_108;
unsigned int reg_r2_109;
unsigned int reg_r2_110;
unsigned int reg_r2_111;
unsigned int reg_r2_112;
unsigned int reg_r2_113;
unsigned int reg_r2_114;
unsigned int reg_r2_115;
unsigned int reg_r2_116;
unsigned int reg_r2_117;
unsigned int reg_r2_118;
unsigned int reg_r2_119;
unsigned int reg_r2_120;
unsigned int reg_r2_121;
unsigned int reg_r2_122;
unsigned int reg_r2_123;
unsigned int reg_r2_124;
unsigned int reg_r2_125;
unsigned int reg_r2_126;
unsigned int reg_r2_127;
unsigned int reg_r3_0;
unsigned int reg_r3_1;
unsigned int reg_r3_2;
unsigned int reg_r3_3;
unsigned int reg_r3_4;
unsigned int reg_r3_5;
unsigned int reg_r3_6;
unsigned int reg_r3_7;
unsigned int reg_r3_8;
unsigned int reg_r3_9;
unsigned int reg_r3_10;
unsigned int reg_r3_11;
unsigned int reg_r3_12;
unsigned int reg_r3_13;
unsigned int reg_r3_14;
unsigned int reg_r3_15;
unsigned int reg_r3_16;
unsigned int reg_r3_17;
unsigned int reg_r3_18;
unsigned int reg_r3_19;
unsigned int reg_r3_20;
unsigned int reg_r3_21;
unsigned int reg_r3_22;
unsigned int reg_r3_23;
unsigned int reg_r3_24;
unsigned int reg_r3_25;
unsigned int reg_r3_26;
unsigned int reg_r3_27;
unsigned int reg_r3_28;
unsigned int reg_r3_29;
unsigned int reg_r3_30;
unsigned int reg_r3_31;
unsigned int reg_r3_32;
unsigned int reg_r3_33;
unsigned int reg_r3_34;
unsigned int reg_r3_35;
unsigned int reg_r3_36;
unsigned int reg_r3_37;
unsigned int reg_r3_38;
unsigned int reg_r3_39;
unsigned int reg_r3_40;
unsigned int reg_r3_41;
unsigned int reg_r3_42;
unsigned int reg_r3_43;
unsigned int reg_r3_44;
unsigned int reg_r3_45;
unsigned int reg_r3_46;
unsigned int reg_r3_47;
unsigned int reg_r3_48;
unsigned int reg_r3_49;
unsigned int reg_r3_50;
unsigned int reg_r3_51;
unsigned int reg_r3_52;
unsigned int reg_r3_53;
unsigned int reg_r3_54;
unsigned int reg_r3_55;
unsigned int reg_r3_56;
unsigned int reg_r3_57;
unsigned int reg_r3_58;
unsigned int reg_r3_59;
unsigned int reg_r3_60;
unsigned int reg_r3_61;
unsigned int reg_r3_62;
unsigned int reg_r3_63;
unsigned int reg_r3_64;
unsigned int reg_r3_65;
unsigned int reg_r3_66;
unsigned int reg_r3_67;
unsigned int reg_r3_68;
unsigned int reg_r3_69;
unsigned int reg_r3_70;
unsigned int reg_r3_71;
unsigned int reg_r3_72;
unsigned int reg_r3_73;
unsigned int reg_r3_74;
unsigned int reg_r3_75;
unsigned int reg_r3_76;
unsigned int reg_r3_77;
unsigned int reg_r3_78;
unsigned int reg_r3_79;
unsigned int reg_r3_80;
unsigned int reg_r3_81;
unsigned int reg_r3_82;
unsigned int reg_r3_83;
unsigned int reg_r3_84;
unsigned int reg_r3_85;
unsigned int reg_r3_86;
unsigned int reg_r3_87;
unsigned int reg_r3_88;
unsigned int reg_r3_89;
unsigned int reg_r3_90;
unsigned int reg_r3_91;
unsigned int reg_r3_92;
unsigned int reg_r3_93;
unsigned int reg_r3_94;
unsigned int reg_r3_95;
unsigned int reg_r3_96;
unsigned int reg_r3_97;
unsigned int reg_r3_98;
unsigned int reg_r3_99;
unsigned int reg_r3_100;
unsigned int reg_r3_101;
unsigned int reg_r3_102;
unsigned int reg_r3_103;
unsigned int reg_r3_104;
unsigned int reg_r3_105;
unsigned int reg_r3_106;
unsigned int reg_r3_107;
unsigned int reg_r3_108;
unsigned int reg_r3_109;
unsigned int reg_r3_110;
unsigned int reg_r3_111;
unsigned int reg_r3_112;
unsigned int reg_r3_113;
unsigned int reg_r3_114;
unsigned int reg_r3_115;
unsigned int reg_r3_116;
unsigned int reg_r3_117;
unsigned int reg_r3_118;
unsigned int reg_r3_119;
unsigned int reg_r3_120;
unsigned int reg_r3_121;
unsigned int reg_r3_122;
unsigned int reg_r3_123;
unsigned int reg_r3_124;
unsigned int reg_r3_125;
unsigned int reg_r3_126;
unsigned int reg_r3_127;


extern unsigned int __vex_main(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(__vex_main);  sim_gprof_enter(&sim_gprof_idx,"__vex_main");

  sim_ta_init(1); /* enable cache simulation */
  reg_r0_1 = sim_create_stack(1048576,reg_r0_1); 

  sim_check_stack(reg_r0_1, -64); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (107 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(0 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -64); /* line 19 */
} /* line 19 */
  sim_icache_fetch(1 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_1, (unsigned int) 28); /* line 21 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_l0_0); /* line 22 */
} /* line 22 */
  sim_icache_fetch(3 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_1, (unsigned int) 16); /* line 24 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 44),0,4), reg_r0_4); /* line 25 */
} /* line 25 */
  sim_icache_fetch(5 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_5, (unsigned int) 9); /* line 27 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 48),0,4), reg_r0_2); /* line 28 */
} /* line 28 */
  sim_icache_fetch(7 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1PACKETX4); /* line 30 */
} /* line 30 */
		 /* line 31 */
  sim_icache_fetch(9 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(_bcopy);
   reg_l0_0 = (107 << 5);
   {
    typedef void t_FT (unsigned int, unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _bcopy;
    (*t_call)(reg_r0_3, reg_r0_4, reg_r0_5);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 33 */
l_lr_1: ;/* line 33 */
__LABEL(l_lr_1);
  sim_icache_fetch(11 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 35 */
   __LDW(reg_r0_2, mem_trace_ld((reg_r0_1 + (unsigned int) 44),0,4)); /* line 36 */
} /* line 36 */
  sim_icache_fetch(13 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 48),0,4)); /* line 38 */
} /* line 38 */
  sim_icache_fetch(14 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_5, (unsigned int) compress_10686XBuf); /* line 40 */
} /* line 40 */
  sim_icache_fetch(16 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_6, (unsigned int) 800); /* line 42 */
} /* line 42 */
  sim_icache_fetch(18 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st(reg_r0_4,0,4), reg_r0_2); /* line 44 */
} /* line 44 */
  sim_icache_fetch(19 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), 0); /* line 46 */
} /* line 46 */
  sim_icache_fetch(21 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_5); /* line 48 */
} /* line 48 */
  sim_icache_fetch(23 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_6); /* line 50 */
} /* line 50 */
		 /* line 51 */
  sim_icache_fetch(25 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(Compress);
   reg_l0_0 = (107 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) Compress;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 53 */
l_lr_3: ;/* line 53 */
__LABEL(l_lr_3);
  sim_icache_fetch(27 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX1); /* line 55 */
} /* line 55 */
		 /* line 56 */
  sim_icache_fetch(29 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (107 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 58 */
l_lr_5: ;/* line 58 */
__LABEL(l_lr_5);
  sim_icache_fetch(31 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, 0); /* line 60 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 61 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 62 */
   __ADD_CYCLES(1);
} /* line 62 */
  sim_icache_fetch(34 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(__vex_main);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 65 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 102: goto l_lr_1;
    case 104: goto l_lr_3;
    case 106: goto l_lr_5;
    case 107:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  Usage(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(Usage);  sim_gprof_enter(&sim_gprof_idx,"Usage");

  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (110 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(35 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 116 */
} /* line 116 */
  sim_icache_fetch(36 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 118 */
} /* line 118 */
  sim_icache_fetch(37 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX2); /* line 120 */
} /* line 120 */
		 /* line 121 */
  sim_icache_fetch(39 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (110 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 123 */
l_lr_8: ;/* line 123 */
__LABEL(l_lr_8);
  sim_icache_fetch(41 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 125 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 126 */
   __ADD_CYCLES(1);
} /* line 126 */
  sim_icache_fetch(43 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(Usage);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 129 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 109: goto l_lr_8;
    case 110:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int rindex( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(rindex);  sim_gprof_enter(&sim_gprof_idx,"rindex");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (121 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(44 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 189 */
  sim_icache_fetch(45 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_12, reg_r0_3, (unsigned int) 7); /* line 191 */
   __ADD(reg_r0_11, reg_r0_3, (unsigned int) 6); /* line 192 */
} /* line 192 */
  sim_icache_fetch(47 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_10, reg_r0_3, (unsigned int) 5); /* line 194 */
   __ADD(reg_r0_9, reg_r0_3, (unsigned int) 4); /* line 195 */
} /* line 195 */
  sim_icache_fetch(49 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_8, reg_r0_3, (unsigned int) 3); /* line 197 */
   __ADD(reg_r0_7, reg_r0_3, (unsigned int) 2); /* line 198 */
} /* line 198 */
  sim_icache_fetch(51 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SXTB(reg_r0_4, reg_r0_4); /* line 200 */
   __ADD(reg_r0_6, reg_r0_3, (unsigned int) 1); /* line 201 */
} /* line 201 */
  sim_icache_fetch(53 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_5, 0); /* line 203 */
   __MOV(reg_r0_2, reg_r0_3); /* line 204 */
} /* line 204 */
l_L0X3: ;/* line 207 */
__LABEL(l_L0X3);
  sim_icache_fetch(55 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_3, mem_trace_ld(reg_r0_2,0,1)); /* line 208 */
} /* line 208 */
  sim_icache_fetch(56 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBs(reg_r0_13, mem_trace_ld(reg_r0_6,0,1)); /* line 210 */
} /* line 210 */
  sim_icache_fetch(57 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_3, 0); /* line 212 */
   __CMPEQ(reg_b0_1, reg_r0_3, reg_r0_4); /* line 213 */
} /* line 213 */
  sim_icache_fetch(59 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_3, reg_b0_1, reg_r0_2, reg_r0_5); /* line 215 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L1X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 216 */
  sim_icache_fetch(61 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_13, 0); /* line 218 */
   __CMPEQ(reg_b0_1, reg_r0_13, reg_r0_4); /* line 219 */
} /* line 219 */
  sim_icache_fetch(63 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_13, reg_b0_1, reg_r0_6, reg_r0_3); /* line 221 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L2X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 222 */
  sim_icache_fetch(65 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_3, mem_trace_ld(reg_r0_7,0,1)); /* line 224 */
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 8); /* line 225 */
} /* line 225 */
  sim_icache_fetch(67 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBs(reg_r0_14, mem_trace_ld(reg_r0_8,0,1)); /* line 227 */
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) 8); /* line 228 */
} /* line 228 */
  sim_icache_fetch(69 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_3, 0); /* line 230 */
   __CMPEQ(reg_b0_1, reg_r0_3, reg_r0_4); /* line 231 */
} /* line 231 */
  sim_icache_fetch(71 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_3, reg_b0_1, reg_r0_7, reg_r0_13); /* line 233 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L3X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 234 */
  sim_icache_fetch(73 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_14, 0); /* line 236 */
   __CMPEQ(reg_b0_1, reg_r0_14, reg_r0_4); /* line 237 */
} /* line 237 */
  sim_icache_fetch(75 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_13, reg_b0_1, reg_r0_8, reg_r0_3); /* line 239 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L4X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 240 */
  sim_icache_fetch(77 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_3, mem_trace_ld(reg_r0_9,0,1)); /* line 242 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) 8); /* line 243 */
} /* line 243 */
  sim_icache_fetch(79 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBs(reg_r0_14, mem_trace_ld(reg_r0_10,0,1)); /* line 245 */
   __ADD(reg_r0_8, reg_r0_8, (unsigned int) 8); /* line 246 */
} /* line 246 */
  sim_icache_fetch(81 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_3, 0); /* line 248 */
   __CMPEQ(reg_b0_1, reg_r0_3, reg_r0_4); /* line 249 */
} /* line 249 */
  sim_icache_fetch(83 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_3, reg_b0_1, reg_r0_9, reg_r0_13); /* line 251 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L5X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 252 */
  sim_icache_fetch(85 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_14, 0); /* line 254 */
   __CMPEQ(reg_b0_1, reg_r0_14, reg_r0_4); /* line 255 */
} /* line 255 */
  sim_icache_fetch(87 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_13, reg_b0_1, reg_r0_10, reg_r0_3); /* line 257 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L6X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 258 */
  sim_icache_fetch(89 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_3, mem_trace_ld(reg_r0_11,0,1)); /* line 260 */
   __ADD(reg_r0_9, reg_r0_9, (unsigned int) 8); /* line 261 */
} /* line 261 */
  sim_icache_fetch(91 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBs(reg_r0_14, mem_trace_ld(reg_r0_12,0,1)); /* line 263 */
   __ADD(reg_r0_10, reg_r0_10, (unsigned int) 8); /* line 264 */
} /* line 264 */
  sim_icache_fetch(93 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_3, 0); /* line 266 */
   __CMPEQ(reg_b0_1, reg_r0_3, reg_r0_4); /* line 267 */
} /* line 267 */
  sim_icache_fetch(95 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_3, reg_b0_1, reg_r0_11, reg_r0_13); /* line 269 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L7X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 270 */
  sim_icache_fetch(97 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_14, 0); /* line 272 */
   __CMPEQ(reg_b0_1, reg_r0_14, reg_r0_4); /* line 273 */
} /* line 273 */
  sim_icache_fetch(99 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_5, reg_b0_1, reg_r0_12, reg_r0_3); /* line 275 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L8X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 276 */
  sim_icache_fetch(101 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_11, reg_r0_11, (unsigned int) 8); /* line 278 */
   __ADD(reg_r0_12, reg_r0_12, (unsigned int) 8); /* line 280 */
} /* line 280 */
  sim_icache_fetch(103 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L0X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L0X3;
} /* line 282 */
l_L8X3: ;/* line 286 */
__LABEL(l_L8X3);
  sim_icache_fetch(104 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L9X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L9X3;
} /* line 287 */
l_L7X3: ;/* line 290 */
__LABEL(l_L7X3);
  sim_icache_fetch(105 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_13); /* line 291 */
   __GOTO(l_L9X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L9X3;
} /* line 292 */
l_L6X3: ;/* line 296 */
__LABEL(l_L6X3);
  sim_icache_fetch(107 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L9X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L9X3;
} /* line 297 */
l_L5X3: ;/* line 300 */
__LABEL(l_L5X3);
  sim_icache_fetch(108 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_13); /* line 301 */
   __GOTO(l_L9X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L9X3;
} /* line 302 */
l_L4X3: ;/* line 306 */
__LABEL(l_L4X3);
  sim_icache_fetch(110 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L9X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L9X3;
} /* line 307 */
l_L3X3: ;/* line 310 */
__LABEL(l_L3X3);
  sim_icache_fetch(111 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_13); /* line 311 */
   __GOTO(l_L9X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L9X3;
} /* line 312 */
l_L2X3: ;/* line 316 */
__LABEL(l_L2X3);
  sim_icache_fetch(113 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L9X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L9X3;
} /* line 317 */
l_L1X3: ;/* line 320 */
__LABEL(l_L1X3);
  sim_icache_fetch(114 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, reg_r0_5); /* line 321 */
} /* line 321 */
l_L9X3: ;/* line 323 */
__LABEL(l_L9X3);
  sim_icache_fetch(115 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(rindex);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 325 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 111: goto l_L0X3;
    case 112: goto l_L8X3;
    case 113: goto l_L7X3;
    case 114: goto l_L6X3;
    case 115: goto l_L5X3;
    case 116: goto l_L4X3;
    case 117: goto l_L3X3;
    case 118: goto l_L2X3;
    case 119: goto l_L1X3;
    case 120: goto l_L9X3;
    case 121:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int Compress( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(Compress);  sim_gprof_enter(&sim_gprof_idx,"Compress");

  sim_check_stack(reg_r0_1, -64); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (177 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(116 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -64); /* line 341 */
} /* line 341 */
  sim_icache_fetch(117 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 343 */
} /* line 343 */
  sim_icache_fetch(118 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_3); /* line 345 */
} /* line 345 */
  sim_icache_fetch(119 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_4); /* line 347 */
} /* line 347 */
  sim_icache_fetch(120 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_5, (unsigned int) CompBuf); /* line 349 */
} /* line 349 */
  sim_icache_fetch(122 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_7, mem_trace_ld((unsigned int) buflen,0,4)); /* line 351 */
} /* line 351 */
  sim_icache_fetch(124 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) do_decomp,0,4), 0); /* line 353 */
} /* line 353 */
  sim_icache_fetch(126 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_7); /* line 355 */
} /* line 355 */
  sim_icache_fetch(127 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_5); /* line 357 */
} /* line 357 */
  sim_icache_fetch(129 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_3, mem_trace_ld(reg_r0_4,0,4)); /* line 359 */
   __MOV(reg_r0_4, (unsigned int) 47); /* line 360 */
} /* line 360 */
		 /* line 361 */
  sim_icache_fetch(131 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(rindex);
   reg_l0_0 = (177 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) rindex;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 363 */
l_lr_22: ;/* line 363 */
__LABEL(l_lr_22);
  sim_icache_fetch(133 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 365 */
} /* line 365 */
  sim_icache_fetch(134 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 367 */
} /* line 367 */
  sim_icache_fetch(135 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_4, (unsigned int) 4); /* line 369 */
} /* line 369 */
  sim_icache_fetch(136 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_3, (unsigned int) -1); /* line 371 */
} /* line 371 */
l_L10X3: ;/* line 374 */
__LABEL(l_L10X3);
  sim_icache_fetch(137 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_0, reg_r0_6, 0); /* line 375 */
   __LDWs(reg_r0_3, mem_trace_ld(reg_r0_2,0,4)); /* line 376 */
} /* line 376 */
  sim_icache_fetch(139 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L11X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 378 */
  sim_icache_fetch(140 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_3, mem_trace_ld(reg_r0_3,0,1)); /* line 380 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 381 */
   __ADD_CYCLES(1);
} /* line 381 */
  sim_icache_fetch(142 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_0, reg_r0_3, (unsigned int) 45); /* line 383 */
} /* line 383 */
  sim_icache_fetch(143 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L12X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 385 */
l_L13X3: ;/* line 388 */
__LABEL(l_L13X3);
  sim_icache_fetch(144 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld(reg_r0_2,0,4)); /* line 389 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 390 */
   __ADD_CYCLES(1);
} /* line 390 */
  sim_icache_fetch(146 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_4, reg_r0_3, (unsigned int) 1); /* line 392 */
} /* line 392 */
  sim_icache_fetch(147 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st(reg_r0_2,0,4), reg_r0_4); /* line 394 */
} /* line 394 */
  sim_icache_fetch(148 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_3, mem_trace_ld((reg_r0_3 + (unsigned int) 1),0,1)); /* line 396 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 397 */
   __ADD_CYCLES(1);
} /* line 397 */
  sim_icache_fetch(150 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_3, 0); /* line 399 */
   __CMPLT(reg_r0_4, reg_r0_3, (unsigned int) 67); /* line 400 */
} /* line 400 */
  sim_icache_fetch(152 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_r0_5, reg_r0_3, (unsigned int) 118); /* line 402 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L12X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 403 */
  sim_icache_fetch(154 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ORL(reg_b0_0, reg_r0_4, reg_r0_5); /* line 405 */
} /* line 405 */
  sim_icache_fetch(155 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L14X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 407 */
  sim_icache_fetch(156 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_3, reg_r0_3, ((unsigned int) _X1XCompressXTAGPACKETX0 + (unsigned int) -268)); /* line 409 */
} /* line 409 */
  sim_icache_fetch(158 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_l0_0, mem_trace_ld(reg_r0_3,0,4)); /* line 411 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 412 */
   __ADD_CYCLES(1);
} /* line 412 */
  sim_icache_fetch(160 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(reg_l0_0);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 414 */
l__X1XCompressXTAGX0X0: ;/* line 416 */
__LABEL(l__X1XCompressXTAGX0X0);
  sim_icache_fetch(161 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) block_compress,0,4), 0); /* line 418 */
} /* line 418 */
  sim_icache_fetch(163 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L13X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L13X3;
} /* line 420 */
l__X1XCompressXTAGX0X7: ;/* line 423 */
__LABEL(l__X1XCompressXTAGX0X7);
  sim_icache_fetch(164 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) quiet,0,4), 0); /* line 425 */
} /* line 425 */
  sim_icache_fetch(166 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L13X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L13X3;
} /* line 427 */
l__X1XCompressXTAGX0X6: ;/* line 430 */
__LABEL(l__X1XCompressXTAGX0X6);
  sim_icache_fetch(167 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 431 */
} /* line 431 */
  sim_icache_fetch(168 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) quiet,0,4), reg_r0_3); /* line 434 */
} /* line 434 */
  sim_icache_fetch(170 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L13X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L13X3;
} /* line 436 */
l__X1XCompressXTAGX0X5: ;/* line 439 */
__LABEL(l__X1XCompressXTAGX0X5);
  sim_icache_fetch(171 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 440 */
} /* line 440 */
  sim_icache_fetch(172 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) nomagic,0,4), reg_r0_3); /* line 443 */
} /* line 443 */
  sim_icache_fetch(174 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L13X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L13X3;
} /* line 445 */
l__X1XCompressXTAGX0X4: ;/* line 448 */
__LABEL(l__X1XCompressXTAGX0X4);
  sim_icache_fetch(175 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 449 */
} /* line 449 */
  sim_icache_fetch(176 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) do_decomp,0,4), reg_r0_3); /* line 452 */
} /* line 452 */
  sim_icache_fetch(178 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L13X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L13X3;
} /* line 454 */
l__X1XCompressXTAGX0X3: ;/* line 457 */
__LABEL(l__X1XCompressXTAGX0X3);
  sim_icache_fetch(179 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 458 */
} /* line 458 */
  sim_icache_fetch(180 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) zcat_flg,0,4), reg_r0_3); /* line 461 */
} /* line 461 */
  sim_icache_fetch(182 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L13X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L13X3;
} /* line 463 */
l__X1XCompressXTAGX0X2: ;/* line 466 */
__LABEL(l__X1XCompressXTAGX0X2);
  sim_icache_fetch(183 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld(reg_r0_2,0,4)); /* line 467 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 468 */
   __ADD_CYCLES(1);
} /* line 468 */
  sim_icache_fetch(185 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_4, reg_r0_3, (unsigned int) 1); /* line 470 */
} /* line 470 */
  sim_icache_fetch(186 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st(reg_r0_2,0,4), reg_r0_4); /* line 472 */
} /* line 472 */
  sim_icache_fetch(187 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_3, mem_trace_ld((reg_r0_3 + (unsigned int) 1),0,1)); /* line 474 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 475 */
   __ADD_CYCLES(1);
} /* line 475 */
  sim_icache_fetch(189 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_0, reg_r0_3, 0); /* line 477 */
} /* line 477 */
  sim_icache_fetch(190 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L15X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 479 */
l_L12X3: ;/* line 481 */
__LABEL(l_L12X3);
  sim_icache_fetch(191 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 4); /* line 482 */
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) -1); /* line 484 */
} /* line 484 */
  sim_icache_fetch(193 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L10X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L10X3;
} /* line 486 */
l_L15X3: ;/* line 489 */
__LABEL(l_L15X3);
  sim_icache_fetch(194 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) -1); /* line 490 */
   __LDWs(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) 4),0,4)); /* line 491 */
} /* line 491 */
  sim_icache_fetch(196 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_6, 0); /* line 493 */
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 4); /* line 494 */
} /* line 494 */
  sim_icache_fetch(198 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_3, 0); /* line 496 */
   if (t__i32_0) {    __BRANCH(t__i32_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L16X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 497 */
  sim_icache_fetch(200 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L16X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 500 */
  sim_icache_fetch(201 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L12X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L12X3;
} /* line 502 */
l_L16X3: ;/* line 505 */
__LABEL(l_L16X3);
  sim_icache_fetch(202 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX3); /* line 506 */
} /* line 506 */
		 /* line 507 */
  sim_icache_fetch(204 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (177 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 509 */
l_lr_36: ;/* line 509 */
__LABEL(l_lr_36);
		 /* line 510 */
  sim_icache_fetch(206 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(Usage);
   reg_l0_0 = (177 << 5);
   {
    typedef void t_FT ();
    t_FT *t_call = (t_FT*) Usage;
    (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 512 */
l_lr_38: ;/* line 512 */
__LABEL(l_lr_38);
  sim_icache_fetch(208 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 514 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 515 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 516 */
   __ADD_CYCLES(1);
} /* line 516 */
  sim_icache_fetch(211 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(Compress);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 519 */
l__X1XCompressXTAGX0X1: ;/* line 522 */
__LABEL(l__X1XCompressXTAGX0X1);
  sim_icache_fetch(212 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_2); /* line 523 */
} /* line 523 */
		 /* line 524 */
  sim_icache_fetch(213 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_6); /* line 527 */
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(version);
   reg_l0_0 = (177 << 5);
   {
    typedef unsigned int t_FT ();
    t_FT *t_call = (t_FT*) version;
    reg_r0_3 =     (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 527 */
l_lr_41: ;/* line 527 */
__LABEL(l_lr_41);
  sim_icache_fetch(216 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 529 */
} /* line 529 */
  sim_icache_fetch(217 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 531 */
} /* line 531 */
  sim_icache_fetch(218 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L13X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L13X3;
} /* line 533 */
l_L14X3: ;/* line 536 */
__LABEL(l_L14X3);
l__X1XCompressXTAGX0XDEFAULT: ;/* line 537 */
__LABEL(l__X1XCompressXTAGX0XDEFAULT);
  sim_icache_fetch(219 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX4); /* line 538 */
} /* line 538 */
		 /* line 539 */
  sim_icache_fetch(221 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (177 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 541 */
l_lr_45: ;/* line 541 */
__LABEL(l_lr_45);
		 /* line 542 */
  sim_icache_fetch(223 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(Usage);
   reg_l0_0 = (177 << 5);
   {
    typedef void t_FT ();
    t_FT *t_call = (t_FT*) Usage;
    (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 544 */
l_lr_47: ;/* line 544 */
__LABEL(l_lr_47);
  sim_icache_fetch(225 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 546 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 547 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 548 */
   __ADD_CYCLES(1);
} /* line 548 */
  sim_icache_fetch(228 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(Compress);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 551 */
l_L11X3: ;/* line 554 */
__LABEL(l_L11X3);
  sim_icache_fetch(229 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) maxbits,0,4)); /* line 555 */
} /* line 555 */
  sim_icache_fetch(231 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_5, (unsigned int) 12); /* line 557 */
   __MOV(reg_r0_4, (unsigned int) 9); /* line 558 */
} /* line 558 */
  sim_icache_fetch(233 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, (unsigned int) 9); /* line 560 */
   __MOV(reg_r0_3, (unsigned int) 1); /* line 561 */
} /* line 561 */
  sim_icache_fetch(235 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L17X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 563 */
  sim_icache_fetch(236 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_2, (unsigned int) 5003); /* line 565 */
} /* line 565 */
  sim_icache_fetch(238 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) fsize,0,4)); /* line 567 */
} /* line 567 */
  sim_icache_fetch(240 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxbits,0,4), reg_r0_4); /* line 569 */
} /* line 569 */
l_L18X3: ;/* line 571 */
__LABEL(l_L18X3);
  sim_icache_fetch(242 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) maxbits,0,4)); /* line 572 */
} /* line 572 */
  sim_icache_fetch(244 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_6, (unsigned int) 4096); /* line 574 */
} /* line 574 */
  sim_icache_fetch(246 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGT(reg_b0_1, reg_r0_4, (unsigned int) 12); /* line 576 */
} /* line 576 */
  sim_icache_fetch(247 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_1) {    __BRANCHF(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L19X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 578 */
  sim_icache_fetch(248 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxbits,0,4), reg_r0_5); /* line 580 */
} /* line 580 */
l_L20X3: ;/* line 582 */
__LABEL(l_L20X3);
  sim_icache_fetch(250 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) maxbits,0,4)); /* line 583 */
} /* line 583 */
  sim_icache_fetch(252 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) hsize,0,4), reg_r0_2); /* line 585 */
} /* line 585 */
  sim_icache_fetch(254 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHL(reg_r0_3, reg_r0_3, reg_r0_4); /* line 587 */
} /* line 587 */
  sim_icache_fetch(255 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxmaxcode,0,4), reg_r0_3); /* line 589 */
} /* line 589 */
  sim_icache_fetch(257 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L21X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 591 */
  sim_icache_fetch(258 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) hsize,0,4), reg_r0_2); /* line 593 */
} /* line 593 */
l_L22X3: ;/* line 595 */
__LABEL(l_L22X3);
		 /* line 595 */
  sim_icache_fetch(260 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(compressf);
   reg_l0_0 = (177 << 5);
   {
    typedef unsigned int t_FT ();
    t_FT *t_call = (t_FT*) compressf;
    reg_r0_3 =     (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 597 */
l_lr_53: ;/* line 597 */
__LABEL(l_lr_53);
  sim_icache_fetch(262 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 599 */
} /* line 599 */
  sim_icache_fetch(264 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_5, (unsigned int) CompBuf); /* line 601 */
} /* line 601 */
  sim_icache_fetch(266 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) UnComp); /* line 603 */
} /* line 603 */
  sim_icache_fetch(268 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((unsigned int) nomagic,0,4)); /* line 605 */
} /* line 605 */
  sim_icache_fetch(270 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_8, reg_r0_2, (unsigned int) -1); /* line 607 */
} /* line 607 */
  sim_icache_fetch(271 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_6, 0); /* line 609 */
   __CMPGE(reg_b0_1, reg_r0_8, 0); /* line 610 */
} /* line 610 */
  sim_icache_fetch(273 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_6, ((unsigned int) CompBuf + (unsigned int) 1)); /* line 612 */
} /* line 612 */
  sim_icache_fetch(275 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBs(reg_r0_9, mem_trace_ld((unsigned int) CompBuf,0,1)); /* line 614 */
} /* line 614 */
  sim_icache_fetch(277 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBUs(reg_r0_10, mem_trace_ld((unsigned int) magic_header,0,1)); /* line 616 */
} /* line 616 */
  sim_icache_fetch(279 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_9, reg_r0_9); /* line 618 */
} /* line 618 */
  sim_icache_fetch(280 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __AND(reg_r0_10, reg_r0_10, (unsigned int) 255); /* line 620 */
} /* line 620 */
  sim_icache_fetch(281 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_2, reg_r0_9, reg_r0_10); /* line 622 */
} /* line 622 */
  sim_icache_fetch(282 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX5); /* line 624 */
} /* line 624 */
  sim_icache_fetch(284 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_2); /* line 626 */
} /* line 626 */
  sim_icache_fetch(286 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_5); /* line 628 */
} /* line 628 */
  sim_icache_fetch(288 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_4); /* line 630 */
} /* line 630 */
  sim_icache_fetch(290 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L23X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 632 */
  sim_icache_fetch(291 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_8); /* line 634 */
} /* line 634 */
  sim_icache_fetch(293 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_1) {    __BRANCHF(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L24X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 636 */
  sim_icache_fetch(294 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_6); /* line 638 */
} /* line 638 */
l_L25X3: ;/* line 640 */
__LABEL(l_L25X3);
  sim_icache_fetch(296 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L26X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 641 */
l_L27X3: ;/* line 643 */
__LABEL(l_L27X3);
		 /* line 643 */
  sim_icache_fetch(297 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (177 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 645 */
l_lr_57: ;/* line 645 */
__LABEL(l_lr_57);
  sim_icache_fetch(299 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 647 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 648 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 649 */
   __ADD_CYCLES(1);
} /* line 649 */
  sim_icache_fetch(302 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(Compress);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 652 */
l_L26X3: ;/* line 655 */
__LABEL(l_L26X3);
  sim_icache_fetch(303 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) buflen,0,4)); /* line 656 */
} /* line 656 */
  sim_icache_fetch(305 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_4, mem_trace_ld((unsigned int) bufp,0,4)); /* line 658 */
} /* line 658 */
  sim_icache_fetch(307 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -1); /* line 660 */
} /* line 660 */
  sim_icache_fetch(308 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 662 */
   __ADD(reg_r0_5, reg_r0_4, (unsigned int) 1); /* line 663 */
} /* line 663 */
  sim_icache_fetch(310 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBUs(reg_r0_6, mem_trace_ld(((unsigned int) magic_header + (unsigned int) 1),0,1)); /* line 665 */
} /* line 665 */
  sim_icache_fetch(312 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX5); /* line 667 */
} /* line 667 */
  sim_icache_fetch(314 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __AND(reg_r0_6, reg_r0_6, (unsigned int) 255); /* line 669 */
} /* line 669 */
  sim_icache_fetch(315 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_2); /* line 671 */
} /* line 671 */
  sim_icache_fetch(317 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L28X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 673 */
  sim_icache_fetch(318 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_5); /* line 675 */
} /* line 675 */
  sim_icache_fetch(320 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_4, mem_trace_ld(reg_r0_4,0,1)); /* line 677 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 678 */
   __ADD_CYCLES(1);
} /* line 678 */
  sim_icache_fetch(322 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_4, reg_r0_4); /* line 680 */
} /* line 680 */
l_L29X3: ;/* line 682 */
__LABEL(l_L29X3);
  sim_icache_fetch(323 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_0, reg_r0_4, reg_r0_6); /* line 683 */
} /* line 683 */
  sim_icache_fetch(324 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L30X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 686 */
  sim_icache_fetch(325 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L27X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L27X3;
} /* line 688 */
l_L30X3: ;/* line 691 */
__LABEL(l_L30X3);
  sim_icache_fetch(326 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) buflen,0,4)); /* line 692 */
} /* line 692 */
  sim_icache_fetch(328 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_4, mem_trace_ld((unsigned int) bufp,0,4)); /* line 694 */
} /* line 694 */
  sim_icache_fetch(330 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -1); /* line 696 */
   __MOV(reg_r0_5, (unsigned int) 1); /* line 697 */
} /* line 697 */
  sim_icache_fetch(332 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 699 */
   __ADD(reg_r0_6, reg_r0_4, (unsigned int) 1); /* line 700 */
} /* line 700 */
  sim_icache_fetch(334 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_8, (unsigned int) 100000); /* line 702 */
} /* line 702 */
  sim_icache_fetch(336 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX6); /* line 704 */
} /* line 704 */
  sim_icache_fetch(338 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_2); /* line 706 */
} /* line 706 */
  sim_icache_fetch(340 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L31X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 708 */
  sim_icache_fetch(341 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_6); /* line 710 */
} /* line 710 */
  sim_icache_fetch(343 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_4, mem_trace_ld(reg_r0_4,0,1)); /* line 712 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 713 */
   __ADD_CYCLES(1);
} /* line 713 */
  sim_icache_fetch(345 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_4, reg_r0_4); /* line 715 */
} /* line 715 */
l_L32X3: ;/* line 717 */
__LABEL(l_L32X3);
  sim_icache_fetch(346 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __AND(reg_r0_6, reg_r0_4, (unsigned int) 128); /* line 718 */
   __AND(reg_r0_2, reg_r0_4, (unsigned int) 31); /* line 719 */
} /* line 719 */
  sim_icache_fetch(348 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_5, reg_r0_5, reg_r0_2); /* line 721 */
   __CMPGT(reg_b0_0, reg_r0_2, (unsigned int) 12); /* line 722 */
} /* line 722 */
  sim_icache_fetch(350 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxmaxcode,0,4), reg_r0_5); /* line 724 */
} /* line 724 */
  sim_icache_fetch(352 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) block_compress,0,4), reg_r0_6); /* line 726 */
} /* line 726 */
  sim_icache_fetch(354 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxbits,0,4), reg_r0_2); /* line 728 */
} /* line 728 */
  sim_icache_fetch(356 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) fsize,0,4), reg_r0_8); /* line 730 */
} /* line 730 */
  sim_icache_fetch(358 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L23X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 732 */
		 /* line 733 */
  sim_icache_fetch(359 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (177 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 735 */
l_lr_63: ;/* line 735 */
__LABEL(l_lr_63);
  sim_icache_fetch(361 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 737 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 738 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 739 */
   __ADD_CYCLES(1);
} /* line 739 */
  sim_icache_fetch(364 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(Compress);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 742 */
l_L23X3: ;/* line 745 */
__LABEL(l_L23X3);
		 /* line 745 */
  sim_icache_fetch(365 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(decompress);
   reg_l0_0 = (177 << 5);
   {
    typedef unsigned int t_FT ();
    t_FT *t_call = (t_FT*) decompress;
    reg_r0_3 =     (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 747 */
l_lr_66: ;/* line 747 */
__LABEL(l_lr_66);
  sim_icache_fetch(367 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, 0); /* line 749 */
   __LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 750 */
} /* line 750 */
  sim_icache_fetch(369 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 752 */
} /* line 752 */
  sim_icache_fetch(370 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_7); /* line 754 */
} /* line 754 */
  sim_icache_fetch(372 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(Compress);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 757 */
l_L31X3: ;/* line 760 */
__LABEL(l_L31X3);
  sim_icache_fetch(373 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_4, (unsigned int) -1); /* line 761 */
   __MOV(reg_r0_5, (unsigned int) 1); /* line 762 */
} /* line 762 */
  sim_icache_fetch(375 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX6); /* line 765 */
} /* line 765 */
  sim_icache_fetch(377 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L32X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L32X3;
} /* line 767 */
l_L28X3: ;/* line 770 */
__LABEL(l_L28X3);
  sim_icache_fetch(378 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) -1); /* line 771 */
} /* line 771 */
  sim_icache_fetch(379 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX5); /* line 774 */
} /* line 774 */
  sim_icache_fetch(381 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L29X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L29X3;
} /* line 776 */
l_L24X3: ;/* line 779 */
__LABEL(l_L24X3);
  sim_icache_fetch(382 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_9, (unsigned int) -1); /* line 780 */
} /* line 780 */
  sim_icache_fetch(383 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_2, reg_r0_9, reg_r0_10); /* line 782 */
} /* line 782 */
  sim_icache_fetch(384 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX5); /* line 785 */
} /* line 785 */
  sim_icache_fetch(386 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L25X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L25X3;
} /* line 787 */
l_L21X3: ;/* line 790 */
__LABEL(l_L21X3);
  sim_icache_fetch(387 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) fsize,0,4)); /* line 791 */
} /* line 791 */
  sim_icache_fetch(389 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 5003); /* line 793 */
} /* line 793 */
  sim_icache_fetch(391 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_2, (unsigned int) 8192); /* line 795 */
} /* line 795 */
  sim_icache_fetch(393 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L33X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 797 */
  sim_icache_fetch(394 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) hsize,0,4), reg_r0_3); /* line 800 */
} /* line 800 */
  sim_icache_fetch(396 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L22X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L22X3;
} /* line 802 */
l_L33X3: ;/* line 805 */
__LABEL(l_L33X3);
  sim_icache_fetch(397 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) fsize,0,4)); /* line 806 */
} /* line 806 */
  sim_icache_fetch(399 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 5003); /* line 808 */
} /* line 808 */
  sim_icache_fetch(401 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_2, (unsigned int) 16384); /* line 810 */
} /* line 810 */
  sim_icache_fetch(403 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L34X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 812 */
  sim_icache_fetch(404 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) hsize,0,4), reg_r0_3); /* line 815 */
} /* line 815 */
  sim_icache_fetch(406 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L22X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L22X3;
} /* line 817 */
l_L34X3: ;/* line 820 */
__LABEL(l_L34X3);
  sim_icache_fetch(407 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) fsize,0,4)); /* line 821 */
} /* line 821 */
  sim_icache_fetch(409 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 5003); /* line 823 */
} /* line 823 */
  sim_icache_fetch(411 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_2, (unsigned int) 32768); /* line 825 */
} /* line 825 */
  sim_icache_fetch(413 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L35X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 827 */
  sim_icache_fetch(414 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) hsize,0,4), reg_r0_3); /* line 830 */
} /* line 830 */
  sim_icache_fetch(416 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L22X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L22X3;
} /* line 832 */
l_L35X3: ;/* line 835 */
__LABEL(l_L35X3);
  sim_icache_fetch(417 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) fsize,0,4)); /* line 836 */
} /* line 836 */
  sim_icache_fetch(419 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 5003); /* line 838 */
} /* line 838 */
  sim_icache_fetch(421 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_2, (unsigned int) 47000); /* line 840 */
} /* line 840 */
  sim_icache_fetch(423 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L22X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 842 */
  sim_icache_fetch(424 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) hsize,0,4), reg_r0_3); /* line 845 */
} /* line 845 */
  sim_icache_fetch(426 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L22X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L22X3;
} /* line 847 */
l_L19X3: ;/* line 850 */
__LABEL(l_L19X3);
  sim_icache_fetch(427 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 851 */
   __GOTO(l_L20X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L20X3;
} /* line 852 */
l_L17X3: ;/* line 855 */
__LABEL(l_L17X3);
  sim_icache_fetch(429 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) fsize,0,4)); /* line 856 */
} /* line 856 */
  sim_icache_fetch(431 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_5, (unsigned int) 12); /* line 858 */
   __MOV(reg_r0_3, (unsigned int) 1); /* line 859 */
} /* line 859 */
  sim_icache_fetch(433 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_2, (unsigned int) 5003); /* line 862 */
} /* line 862 */
  sim_icache_fetch(435 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L18X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L18X3;
} /* line 864 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 123: goto l_lr_22;
    case 124: goto l_L10X3;
    case 125: goto l_L13X3;
    case 126: goto l__X1XCompressXTAGX0X0;
    case 127: goto l__X1XCompressXTAGX0X7;
    case 128: goto l__X1XCompressXTAGX0X6;
    case 129: goto l__X1XCompressXTAGX0X5;
    case 130: goto l__X1XCompressXTAGX0X4;
    case 131: goto l__X1XCompressXTAGX0X3;
    case 132: goto l__X1XCompressXTAGX0X2;
    case 133: goto l_L12X3;
    case 134: goto l_L15X3;
    case 135: goto l_L16X3;
    case 137: goto l_lr_36;
    case 139: goto l_lr_38;
    case 140: goto l__X1XCompressXTAGX0X1;
    case 142: goto l_lr_41;
    case 143: goto l_L14X3;
    case 144: goto l__X1XCompressXTAGX0XDEFAULT;
    case 146: goto l_lr_45;
    case 148: goto l_lr_47;
    case 149: goto l_L11X3;
    case 150: goto l_L18X3;
    case 151: goto l_L20X3;
    case 152: goto l_L22X3;
    case 154: goto l_lr_53;
    case 155: goto l_L25X3;
    case 156: goto l_L27X3;
    case 158: goto l_lr_57;
    case 159: goto l_L26X3;
    case 160: goto l_L29X3;
    case 161: goto l_L30X3;
    case 162: goto l_L32X3;
    case 164: goto l_lr_63;
    case 165: goto l_L23X3;
    case 167: goto l_lr_66;
    case 168: goto l_L31X3;
    case 169: goto l_L28X3;
    case 170: goto l_L24X3;
    case 171: goto l_L21X3;
    case 172: goto l_L33X3;
    case 173: goto l_L34X3;
    case 174: goto l_L35X3;
    case 175: goto l_L19X3;
    case 176: goto l_L17X3;
    case 177:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int compressf(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(compressf);  sim_gprof_enter(&sim_gprof_idx,"compressf");

  sim_check_stack(reg_r0_1, -64); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (234 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(436 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -64); /* line 1002 */
} /* line 1002 */
  sim_icache_fetch(437 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_5, (unsigned int) 3); /* line 1004 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 1005 */
} /* line 1005 */
  sim_icache_fetch(439 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((unsigned int) nomagic,0,4)); /* line 1007 */
} /* line 1007 */
  sim_icache_fetch(441 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_8, (unsigned int) 9); /* line 1009 */
   __MOV(reg_r0_7, (unsigned int) 1); /* line 1010 */
} /* line 1010 */
  sim_icache_fetch(443 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_6, 0); /* line 1012 */
   __MOV(reg_r0_4, 0); /* line 1013 */
} /* line 1013 */
  sim_icache_fetch(445 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L36X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1015 */
l_L37X3: ;/* line 1017 */
__LABEL(l_L37X3);
  sim_icache_fetch(446 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bytes_out,0,4), reg_r0_5); /* line 1018 */
} /* line 1018 */
  sim_icache_fetch(448 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_5, (unsigned int) 10000); /* line 1020 */
} /* line 1020 */
  sim_icache_fetch(450 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_6, (unsigned int) 511); /* line 1022 */
} /* line 1022 */
  sim_icache_fetch(452 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_9, mem_trace_ld((unsigned int) block_compress,0,4)); /* line 1024 */
} /* line 1024 */
  sim_icache_fetch(454 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_10, (unsigned int) 257); /* line 1026 */
} /* line 1026 */
  sim_icache_fetch(456 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_0, reg_r0_9, 0); /* line 1028 */
} /* line 1028 */
  sim_icache_fetch(457 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) checkpoint,0,4), reg_r0_5); /* line 1030 */
} /* line 1030 */
  sim_icache_fetch(459 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_10, reg_b0_0, reg_r0_10, (unsigned int) 256); /* line 1032 */
} /* line 1032 */
  sim_icache_fetch(461 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) buflen,0,4)); /* line 1034 */
} /* line 1034 */
  sim_icache_fetch(463 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_9, mem_trace_ld((unsigned int) bufp,0,4)); /* line 1036 */
} /* line 1036 */
  sim_icache_fetch(465 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) -1); /* line 1038 */
} /* line 1038 */
  sim_icache_fetch(466 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_5, 0); /* line 1040 */
   __ADD(reg_r0_11, reg_r0_9, (unsigned int) 1); /* line 1041 */
} /* line 1041 */
  sim_icache_fetch(468 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_2, mem_trace_ld((unsigned int) hsize,0,4)); /* line 1043 */
} /* line 1043 */
  sim_icache_fetch(470 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 65536); /* line 1045 */
} /* line 1045 */
  sim_icache_fetch(472 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_5); /* line 1047 */
} /* line 1047 */
  sim_icache_fetch(474 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_5, reg_l0_0); /* line 1049 */
} /* line 1049 */
  sim_icache_fetch(475 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) compress_10686Xoffset,0,4), 0); /* line 1051 */
} /* line 1051 */
  sim_icache_fetch(477 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) out_count,0,4), 0); /* line 1053 */
} /* line 1053 */
  sim_icache_fetch(479 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) clear_flg,0,4), 0); /* line 1055 */
} /* line 1055 */
  sim_icache_fetch(481 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) ratio,0,4), 0); /* line 1057 */
} /* line 1057 */
  sim_icache_fetch(483 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) in_count,0,4), reg_r0_7); /* line 1059 */
} /* line 1059 */
  sim_icache_fetch(485 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) n_bits,0,4), reg_r0_8); /* line 1061 */
} /* line 1061 */
  sim_icache_fetch(487 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_6); /* line 1063 */
} /* line 1063 */
  sim_icache_fetch(489 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) free_ent,0,4), reg_r0_10); /* line 1065 */
} /* line 1065 */
  sim_icache_fetch(491 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L38X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1067 */
  sim_icache_fetch(492 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_11); /* line 1069 */
} /* line 1069 */
  sim_icache_fetch(494 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_9, mem_trace_ld(reg_r0_9,0,1)); /* line 1071 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 1072 */
   __ADD_CYCLES(1);
} /* line 1072 */
  sim_icache_fetch(496 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_9, reg_r0_9); /* line 1074 */
} /* line 1074 */
l_L39X3: ;/* line 1076 */
__LABEL(l_L39X3);
  sim_icache_fetch(497 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_6, reg_r0_9); /* line 1077 */
} /* line 1077 */
l_L40X3: ;/* line 1080 */
__LABEL(l_L40X3);
  sim_icache_fetch(498 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1081 */
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1082 */
} /* line 1082 */
  sim_icache_fetch(500 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1084 */
   if (!t__i32_0) {    __BRANCHF(t__i32_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L41X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1085 */
  sim_icache_fetch(502 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1087 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L42X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1088 */
  sim_icache_fetch(504 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1090 */
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1091 */
} /* line 1091 */
  sim_icache_fetch(506 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1093 */
   if (!t__i32_0) {    __BRANCHF(t__i32_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L43X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1094 */
  sim_icache_fetch(508 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1096 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L44X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1097 */
  sim_icache_fetch(510 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1099 */
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1100 */
} /* line 1100 */
  sim_icache_fetch(512 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1102 */
   if (!t__i32_0) {    __BRANCHF(t__i32_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L45X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1103 */
  sim_icache_fetch(514 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1105 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L46X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1106 */
  sim_icache_fetch(516 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1108 */
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1109 */
} /* line 1109 */
  sim_icache_fetch(518 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, reg_r0_3); /* line 1111 */
   if (!t__i32_0) {    __BRANCHF(t__i32_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L47X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1112 */
  sim_icache_fetch(520 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1114 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L48X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1115 */
  sim_icache_fetch(522 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 8); /* line 1117 */
   __GOTO(l_L40X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L40X3;
} /* line 1118 */
l_L48X3: ;/* line 1121 */
__LABEL(l_L48X3);
  sim_icache_fetch(524 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 7); /* line 1122 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1124 */
} /* line 1124 */
  sim_icache_fetch(526 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L49X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L49X3;
} /* line 1126 */
l_L50X3: ;/* line 1129 */
__LABEL(l_L50X3);
  sim_icache_fetch(527 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) buflen,0,4)); /* line 1130 */
} /* line 1130 */
  sim_icache_fetch(529 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_8, mem_trace_ld((unsigned int) bufp,0,4)); /* line 1132 */
} /* line 1132 */
  sim_icache_fetch(531 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) -1); /* line 1134 */
} /* line 1134 */
  sim_icache_fetch(532 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_3, 0); /* line 1136 */
   __ADD(reg_r0_9, reg_r0_8, (unsigned int) 1); /* line 1137 */
} /* line 1137 */
  sim_icache_fetch(534 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_10, mem_trace_ld((unsigned int) in_count,0,4)); /* line 1139 */
} /* line 1139 */
  sim_icache_fetch(536 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_11, mem_trace_ld((unsigned int) maxbits,0,4)); /* line 1141 */
} /* line 1141 */
  sim_icache_fetch(538 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_10, reg_r0_10, (unsigned int) 1); /* line 1143 */
} /* line 1143 */
  sim_icache_fetch(539 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_3); /* line 1145 */
} /* line 1145 */
  sim_icache_fetch(541 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L51X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1147 */
  sim_icache_fetch(542 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_9); /* line 1149 */
} /* line 1149 */
  sim_icache_fetch(544 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_8, mem_trace_ld(reg_r0_8,0,1)); /* line 1151 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 1152 */
   __ADD_CYCLES(1);
} /* line 1152 */
  sim_icache_fetch(546 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_8, reg_r0_8); /* line 1154 */
} /* line 1154 */
l_L52X3: ;/* line 1156 */
__LABEL(l_L52X3);
  sim_icache_fetch(547 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPNE(reg_b0_0, reg_r0_8, (unsigned int) -1); /* line 1157 */
   __SHL(reg_r0_3, reg_r0_8, reg_r0_6); /* line 1158 */
} /* line 1158 */
  sim_icache_fetch(549 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __XOR(reg_r0_2, reg_r0_7, reg_r0_3); /* line 1160 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L53X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1161 */
  sim_icache_fetch(551 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_3, reg_r0_2, (unsigned int) htab); /* line 1163 */
} /* line 1163 */
  sim_icache_fetch(553 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_11, reg_r0_8, reg_r0_11); /* line 1165 */
   __LDW(reg_r0_3, mem_trace_ld(reg_r0_3,0,4)); /* line 1166 */
} /* line 1166 */
  sim_icache_fetch(555 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_11, reg_r0_7); /* line 1168 */
} /* line 1168 */
  sim_icache_fetch(556 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_0, reg_r0_3, reg_r0_5); /* line 1170 */
} /* line 1170 */
  sim_icache_fetch(557 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_3, reg_r0_2, (unsigned int) codetab); /* line 1172 */
} /* line 1172 */
  sim_icache_fetch(559 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) in_count,0,4), reg_r0_10); /* line 1174 */
} /* line 1174 */
  sim_icache_fetch(561 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L54X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1176 */
  sim_icache_fetch(562 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_7, mem_trace_ld(reg_r0_3,0,2)); /* line 1178 */
} /* line 1178 */
  sim_icache_fetch(563 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L50X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L50X3;
} /* line 1180 */
l_L54X3: ;/* line 1183 */
__LABEL(l_L54X3);
  sim_icache_fetch(564 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1184 */
   __MOV(reg_r0_3, reg_r0_7); /* line 1185 */
} /* line 1185 */
  sim_icache_fetch(566 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_6); /* line 1187 */
} /* line 1187 */
  sim_icache_fetch(567 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_8); /* line 1189 */
} /* line 1189 */
  sim_icache_fetch(568 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1191 */
} /* line 1191 */
  sim_icache_fetch(569 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_2, reg_r0_2, (unsigned int) htab); /* line 1193 */
} /* line 1193 */
  sim_icache_fetch(571 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld(reg_r0_2,0,4)); /* line 1195 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 1196 */
   __ADD_CYCLES(1);
} /* line 1196 */
  sim_icache_fetch(573 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 1198 */
} /* line 1198 */
  sim_icache_fetch(574 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L55X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1200 */
l_L56X3: ;/* line 1202 */
__LABEL(l_L56X3);
		 /* line 1202 */
  sim_icache_fetch(575 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(output);
   reg_l0_0 = (234 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) output;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 1204 */
l_lr_86: ;/* line 1204 */
__LABEL(l_lr_86);
  sim_icache_fetch(577 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) out_count,0,4)); /* line 1206 */
} /* line 1206 */
  sim_icache_fetch(579 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_8, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 1208 */
} /* line 1208 */
  sim_icache_fetch(580 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) 1); /* line 1210 */
   __LDW(reg_r0_2, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1211 */
} /* line 1211 */
  sim_icache_fetch(582 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_7, reg_r0_8); /* line 1213 */
   __LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1214 */
} /* line 1214 */
  sim_icache_fetch(584 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_9, mem_trace_ld((unsigned int) free_ent,0,4)); /* line 1216 */
} /* line 1216 */
  sim_icache_fetch(586 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_10, mem_trace_ld((unsigned int) maxmaxcode,0,4)); /* line 1218 */
} /* line 1218 */
  sim_icache_fetch(588 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_11, reg_r0_9, (unsigned int) 1); /* line 1220 */
   __LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1221 */
} /* line 1221 */
  sim_icache_fetch(590 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_9, reg_r0_10); /* line 1223 */
} /* line 1223 */
  sim_icache_fetch(591 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_10, reg_r0_2, (unsigned int) codetab); /* line 1225 */
} /* line 1225 */
  sim_icache_fetch(593 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_2, reg_r0_2, (unsigned int) htab); /* line 1227 */
} /* line 1227 */
  sim_icache_fetch(595 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) out_count,0,4), reg_r0_3); /* line 1229 */
} /* line 1229 */
  sim_icache_fetch(597 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L57X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1231 */
  sim_icache_fetch(598 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) free_ent,0,4), reg_r0_11); /* line 1233 */
} /* line 1233 */
  sim_icache_fetch(600 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st(reg_r0_10,0,2), reg_r0_9); /* line 1235 */
} /* line 1235 */
  sim_icache_fetch(601 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st(reg_r0_2,0,4), reg_r0_5); /* line 1237 */
   __GOTO(l_L50X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L50X3;
} /* line 1238 */
l_L57X3: ;/* line 1241 */
__LABEL(l_L57X3);
  sim_icache_fetch(603 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_6); /* line 1242 */
} /* line 1242 */
  sim_icache_fetch(604 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_7); /* line 1244 */
} /* line 1244 */
  sim_icache_fetch(605 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) in_count,0,4)); /* line 1246 */
} /* line 1246 */
  sim_icache_fetch(607 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) checkpoint,0,4)); /* line 1248 */
} /* line 1248 */
  sim_icache_fetch(609 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) block_compress,0,4)); /* line 1250 */
} /* line 1250 */
  sim_icache_fetch(611 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_r0_2, reg_r0_2, reg_r0_3); /* line 1252 */
} /* line 1252 */
  sim_icache_fetch(612 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ANDL(reg_b0_0, reg_r0_2, reg_r0_5); /* line 1254 */
} /* line 1254 */
  sim_icache_fetch(613 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L58X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1256 */
		 /* line 1257 */
  sim_icache_fetch(614 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(cl_block);
   reg_l0_0 = (234 << 5);
   {
    typedef unsigned int t_FT ();
    t_FT *t_call = (t_FT*) cl_block;
    reg_r0_3 =     (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 1259 */
l_lr_89: ;/* line 1259 */
__LABEL(l_lr_89);
  sim_icache_fetch(616 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1261 */
} /* line 1261 */
  sim_icache_fetch(617 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1263 */
} /* line 1263 */
  sim_icache_fetch(618 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L50X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L50X3;
} /* line 1265 */
l_L58X3: ;/* line 1268 */
__LABEL(l_L58X3);
  sim_icache_fetch(619 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1269 */
} /* line 1269 */
  sim_icache_fetch(620 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1271 */
} /* line 1271 */
  sim_icache_fetch(621 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L50X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L50X3;
} /* line 1273 */
l_L55X3: ;/* line 1276 */
__LABEL(l_L55X3);
  sim_icache_fetch(622 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_2, mem_trace_ld((reg_r0_1 + (unsigned int) 32),0,4)); /* line 1277 */
   __MOV(reg_r0_4, reg_r0_57); /* line 1278 */
} /* line 1278 */
  sim_icache_fetch(624 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_5, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 1280 */
   __MOV(reg_r0_10, reg_r0_7); /* line 1281 */
} /* line 1281 */
  sim_icache_fetch(626 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_57, reg_r0_57, reg_r0_2); /* line 1283 */
   __CMPNE(reg_b0_0, reg_r0_2, 0); /* line 1284 */
} /* line 1284 */
  sim_icache_fetch(628 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_3, reg_b0_0, reg_r0_57, (unsigned int) 1); /* line 1286 */
} /* line 1286 */
l_L59X3: ;/* line 1289 */
__LABEL(l_L59X3);
  sim_icache_fetch(629 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SUB(reg_r0_2, reg_r0_2, reg_r0_3); /* line 1290 */
} /* line 1290 */
  sim_icache_fetch(630 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 1292 */
   __ADD(reg_r0_6, reg_r0_2, reg_r0_4); /* line 1293 */
} /* line 1293 */
  sim_icache_fetch(632 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_2, reg_b0_0, reg_r0_2, reg_r0_6); /* line 1295 */
} /* line 1295 */
  sim_icache_fetch(633 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_6, reg_r0_2, (unsigned int) htab); /* line 1297 */
} /* line 1297 */
  sim_icache_fetch(635 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_6, mem_trace_ld(reg_r0_6,0,4)); /* line 1299 */
   __SUB(reg_r0_7, reg_r0_2, reg_r0_3); /* line 1300 */
} /* line 1300 */
  sim_icache_fetch(637 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_7, 0); /* line 1302 */
   __ADD(reg_r0_8, reg_r0_4, reg_r0_7); /* line 1303 */
} /* line 1303 */
  sim_icache_fetch(639 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_6, reg_r0_5); /* line 1305 */
   __CMPGT(reg_b0_2, reg_r0_6, 0); /* line 1306 */
} /* line 1306 */
  sim_icache_fetch(641 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_7, reg_b0_0, reg_r0_7, reg_r0_8); /* line 1308 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L60X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1309 */
  sim_icache_fetch(643 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_6, reg_r0_7, reg_r0_3); /* line 1311 */
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L61X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1312 */
  sim_icache_fetch(645 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_8, reg_r0_7, (unsigned int) htab); /* line 1314 */
} /* line 1314 */
  sim_icache_fetch(647 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_8, mem_trace_ld(reg_r0_8,0,4)); /* line 1316 */
   __CMPGE(reg_b0_0, reg_r0_6, 0); /* line 1317 */
} /* line 1317 */
  sim_icache_fetch(649 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_4, reg_r0_6); /* line 1319 */
} /* line 1319 */
  sim_icache_fetch(650 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_8, reg_r0_5); /* line 1321 */
   __CMPGT(reg_b0_2, reg_r0_8, 0); /* line 1322 */
} /* line 1322 */
  sim_icache_fetch(652 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_6, reg_b0_0, reg_r0_6, reg_r0_9); /* line 1324 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L62X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1325 */
  sim_icache_fetch(654 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_8, reg_r0_6, reg_r0_3); /* line 1327 */
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L63X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1328 */
  sim_icache_fetch(656 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_7, reg_r0_6, (unsigned int) htab); /* line 1330 */
} /* line 1330 */
  sim_icache_fetch(658 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_7, mem_trace_ld(reg_r0_7,0,4)); /* line 1332 */
   __CMPGE(reg_b0_0, reg_r0_8, 0); /* line 1333 */
} /* line 1333 */
  sim_icache_fetch(660 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_4, reg_r0_8); /* line 1335 */
} /* line 1335 */
  sim_icache_fetch(661 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_7, reg_r0_5); /* line 1337 */
   __CMPGT(reg_b0_2, reg_r0_7, 0); /* line 1338 */
} /* line 1338 */
  sim_icache_fetch(663 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_8, reg_b0_0, reg_r0_8, reg_r0_9); /* line 1340 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L64X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1341 */
  sim_icache_fetch(665 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_7, reg_r0_8, reg_r0_3); /* line 1343 */
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L65X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1344 */
  sim_icache_fetch(667 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_6, reg_r0_8, (unsigned int) htab); /* line 1346 */
} /* line 1346 */
  sim_icache_fetch(669 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_6, mem_trace_ld(reg_r0_6,0,4)); /* line 1348 */
   __CMPGE(reg_b0_0, reg_r0_7, 0); /* line 1349 */
} /* line 1349 */
  sim_icache_fetch(671 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_4, reg_r0_7); /* line 1351 */
} /* line 1351 */
  sim_icache_fetch(672 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_6, reg_r0_5); /* line 1353 */
   __CMPGT(reg_b0_2, reg_r0_6, 0); /* line 1354 */
} /* line 1354 */
  sim_icache_fetch(674 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_7, reg_b0_0, reg_r0_7, reg_r0_9); /* line 1356 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L66X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1357 */
  sim_icache_fetch(676 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_6, reg_r0_7, reg_r0_3); /* line 1359 */
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L67X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1360 */
  sim_icache_fetch(678 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_8, reg_r0_7, (unsigned int) htab); /* line 1362 */
} /* line 1362 */
  sim_icache_fetch(680 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_8, mem_trace_ld(reg_r0_8,0,4)); /* line 1364 */
   __CMPGE(reg_b0_0, reg_r0_6, 0); /* line 1365 */
} /* line 1365 */
  sim_icache_fetch(682 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_4, reg_r0_6); /* line 1367 */
} /* line 1367 */
  sim_icache_fetch(683 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_8, reg_r0_5); /* line 1369 */
   __CMPGT(reg_b0_2, reg_r0_8, 0); /* line 1370 */
} /* line 1370 */
  sim_icache_fetch(685 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_6, reg_b0_0, reg_r0_6, reg_r0_9); /* line 1372 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L68X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1373 */
  sim_icache_fetch(687 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_8, reg_r0_6, reg_r0_3); /* line 1375 */
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L69X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1376 */
  sim_icache_fetch(689 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_7, reg_r0_6, (unsigned int) htab); /* line 1378 */
} /* line 1378 */
  sim_icache_fetch(691 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_7, mem_trace_ld(reg_r0_7,0,4)); /* line 1380 */
   __CMPGE(reg_b0_0, reg_r0_8, 0); /* line 1381 */
} /* line 1381 */
  sim_icache_fetch(693 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_4, reg_r0_8); /* line 1383 */
} /* line 1383 */
  sim_icache_fetch(694 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_7, reg_r0_5); /* line 1385 */
   __CMPGT(reg_b0_2, reg_r0_7, 0); /* line 1386 */
} /* line 1386 */
  sim_icache_fetch(696 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_8, reg_b0_0, reg_r0_8, reg_r0_9); /* line 1388 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L70X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1389 */
  sim_icache_fetch(698 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_7, reg_r0_8, reg_r0_3); /* line 1391 */
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L71X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1392 */
  sim_icache_fetch(700 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_6, reg_r0_8, (unsigned int) htab); /* line 1394 */
} /* line 1394 */
  sim_icache_fetch(702 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_6, mem_trace_ld(reg_r0_6,0,4)); /* line 1396 */
   __CMPGE(reg_b0_0, reg_r0_7, 0); /* line 1397 */
} /* line 1397 */
  sim_icache_fetch(704 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_4, reg_r0_7); /* line 1399 */
} /* line 1399 */
  sim_icache_fetch(705 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_6, reg_r0_5); /* line 1401 */
   __CMPGT(reg_b0_2, reg_r0_6, 0); /* line 1402 */
} /* line 1402 */
  sim_icache_fetch(707 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_2, reg_b0_0, reg_r0_7, reg_r0_9); /* line 1404 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L72X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1405 */
  sim_icache_fetch(709 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L73X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1407 */
  sim_icache_fetch(710 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_6, reg_r0_2, (unsigned int) htab); /* line 1409 */
} /* line 1409 */
  sim_icache_fetch(712 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld(reg_r0_6,0,4)); /* line 1411 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 1412 */
   __ADD_CYCLES(1);
} /* line 1412 */
  sim_icache_fetch(714 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_6, reg_r0_5); /* line 1414 */
   __CMPGT(reg_b0_1, reg_r0_6, 0); /* line 1415 */
} /* line 1415 */
  sim_icache_fetch(716 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L74X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1417 */
  sim_icache_fetch(717 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_1) {    __BRANCHF(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L75X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1420 */
  sim_icache_fetch(718 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L59X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L59X3;
} /* line 1422 */
l_L75X3: ;/* line 1425 */
__LABEL(l_L75X3);
  sim_icache_fetch(719 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1426 */
   __MOV(reg_r0_3, reg_r0_10); /* line 1427 */
} /* line 1427 */
  sim_icache_fetch(721 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1429 */
   __MOV(reg_r0_57, reg_r0_4); /* line 1431 */
} /* line 1431 */
  sim_icache_fetch(723 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1433 */
l_L74X3: ;/* line 1437 */
__LABEL(l_L74X3);
  sim_icache_fetch(724 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_57, reg_r0_4); /* line 1439 */
} /* line 1439 */
  sim_icache_fetch(725 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L76X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L76X3;
} /* line 1441 */
l_L73X3: ;/* line 1444 */
__LABEL(l_L73X3);
  sim_icache_fetch(726 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_8); /* line 1445 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1446 */
} /* line 1446 */
  sim_icache_fetch(728 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_10); /* line 1448 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1449 */
} /* line 1449 */
  sim_icache_fetch(730 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_57, reg_r0_4); /* line 1451 */
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1452 */
l_L72X3: ;/* line 1455 */
__LABEL(l_L72X3);
  sim_icache_fetch(732 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_8); /* line 1456 */
   __MOV(reg_r0_57, reg_r0_4); /* line 1458 */
} /* line 1458 */
  sim_icache_fetch(734 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L76X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L76X3;
} /* line 1460 */
l_L71X3: ;/* line 1463 */
__LABEL(l_L71X3);
  sim_icache_fetch(735 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_6); /* line 1464 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1465 */
} /* line 1465 */
  sim_icache_fetch(737 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_10); /* line 1467 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1468 */
} /* line 1468 */
  sim_icache_fetch(739 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_57, reg_r0_4); /* line 1470 */
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1471 */
l_L70X3: ;/* line 1474 */
__LABEL(l_L70X3);
  sim_icache_fetch(741 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_6); /* line 1475 */
   __MOV(reg_r0_57, reg_r0_4); /* line 1477 */
} /* line 1477 */
  sim_icache_fetch(743 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L76X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L76X3;
} /* line 1479 */
l_L69X3: ;/* line 1482 */
__LABEL(l_L69X3);
  sim_icache_fetch(744 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_7); /* line 1483 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1484 */
} /* line 1484 */
  sim_icache_fetch(746 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_10); /* line 1486 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1487 */
} /* line 1487 */
  sim_icache_fetch(748 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_57, reg_r0_4); /* line 1489 */
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1490 */
l_L68X3: ;/* line 1493 */
__LABEL(l_L68X3);
  sim_icache_fetch(750 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_7); /* line 1494 */
   __MOV(reg_r0_57, reg_r0_4); /* line 1496 */
} /* line 1496 */
  sim_icache_fetch(752 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L76X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L76X3;
} /* line 1498 */
l_L67X3: ;/* line 1501 */
__LABEL(l_L67X3);
  sim_icache_fetch(753 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_8); /* line 1502 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1503 */
} /* line 1503 */
  sim_icache_fetch(755 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_10); /* line 1505 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1506 */
} /* line 1506 */
  sim_icache_fetch(757 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_57, reg_r0_4); /* line 1508 */
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1509 */
l_L66X3: ;/* line 1512 */
__LABEL(l_L66X3);
  sim_icache_fetch(759 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_8); /* line 1513 */
   __MOV(reg_r0_57, reg_r0_4); /* line 1515 */
} /* line 1515 */
  sim_icache_fetch(761 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L76X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L76X3;
} /* line 1517 */
l_L65X3: ;/* line 1520 */
__LABEL(l_L65X3);
  sim_icache_fetch(762 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_6); /* line 1521 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1522 */
} /* line 1522 */
  sim_icache_fetch(764 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_10); /* line 1524 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1525 */
} /* line 1525 */
  sim_icache_fetch(766 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_57, reg_r0_4); /* line 1527 */
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1528 */
l_L64X3: ;/* line 1531 */
__LABEL(l_L64X3);
  sim_icache_fetch(768 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_6); /* line 1532 */
   __MOV(reg_r0_57, reg_r0_4); /* line 1534 */
} /* line 1534 */
  sim_icache_fetch(770 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L76X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L76X3;
} /* line 1536 */
l_L63X3: ;/* line 1539 */
__LABEL(l_L63X3);
  sim_icache_fetch(771 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_7); /* line 1540 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1541 */
} /* line 1541 */
  sim_icache_fetch(773 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_10); /* line 1543 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1544 */
} /* line 1544 */
  sim_icache_fetch(775 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_57, reg_r0_4); /* line 1546 */
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1547 */
l_L62X3: ;/* line 1550 */
__LABEL(l_L62X3);
  sim_icache_fetch(777 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_7); /* line 1551 */
   __MOV(reg_r0_57, reg_r0_4); /* line 1553 */
} /* line 1553 */
  sim_icache_fetch(779 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L76X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L76X3;
} /* line 1555 */
l_L61X3: ;/* line 1559 */
__LABEL(l_L61X3);
  sim_icache_fetch(780 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_5); /* line 1560 */
} /* line 1560 */
  sim_icache_fetch(781 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_10); /* line 1562 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 32),0,4), reg_r0_2); /* line 1563 */
} /* line 1563 */
  sim_icache_fetch(783 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_57, reg_r0_4); /* line 1565 */
   __GOTO(l_L56X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L56X3;
} /* line 1566 */
l_L60X3: ;/* line 1570 */
__LABEL(l_L60X3);
  sim_icache_fetch(785 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_57, reg_r0_4); /* line 1571 */
} /* line 1571 */
l_L76X3: ;/* line 1573 */
__LABEL(l_L76X3);
  sim_icache_fetch(786 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 1574 */
} /* line 1574 */
  sim_icache_fetch(788 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_7, mem_trace_ld(reg_r0_2,0,2)); /* line 1576 */
} /* line 1576 */
  sim_icache_fetch(789 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1578 */
} /* line 1578 */
  sim_icache_fetch(790 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L50X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L50X3;
} /* line 1580 */
l_L53X3: ;/* line 1583 */
__LABEL(l_L53X3);
  sim_icache_fetch(791 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_r0_58); /* line 1584 */
   __MOV(reg_r0_3, reg_r0_7); /* line 1585 */
} /* line 1585 */
		 /* line 1586 */
  sim_icache_fetch(793 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(output);
   reg_l0_0 = (234 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) output;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 1588 */
l_lr_112: ;/* line 1588 */
__LABEL(l_lr_112);
  sim_icache_fetch(795 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) out_count,0,4)); /* line 1590 */
} /* line 1590 */
  sim_icache_fetch(797 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) -1); /* line 1592 */
} /* line 1592 */
  sim_icache_fetch(798 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 1594 */
} /* line 1594 */
  sim_icache_fetch(799 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) out_count,0,4), reg_r0_2); /* line 1596 */
} /* line 1596 */
		 /* line 1597 */
  sim_icache_fetch(801 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(output);
   reg_l0_0 = (234 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) output;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 1599 */
l_lr_114: ;/* line 1599 */
__LABEL(l_lr_114);
  sim_icache_fetch(803 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) zcat_flg,0,4)); /* line 1601 */
} /* line 1601 */
  sim_icache_fetch(805 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((unsigned int) quiet,0,4)); /* line 1603 */
} /* line 1603 */
  sim_icache_fetch(807 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_4, mem_trace_ld((unsigned int) in_count,0,4)); /* line 1605 */
} /* line 1605 */
  sim_icache_fetch(809 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __NORL(reg_b0_0, reg_r0_2, reg_r0_6); /* line 1607 */
} /* line 1607 */
  sim_icache_fetch(810 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L77X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1609 */
  sim_icache_fetch(811 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 1611 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 1612 */
   __ADD_CYCLES(1);
} /* line 1612 */
		 /* line 1613 */
  sim_icache_fetch(814 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_3, reg_r0_4, reg_r0_2); /* line 1615 */
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(prratio);
   reg_l0_0 = (234 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) prratio;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 1616 */
l_lr_116: ;/* line 1616 */
__LABEL(l_lr_116);
l_L77X3: ;/* line 1618 */
__LABEL(l_L77X3);
  sim_icache_fetch(817 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 1619 */
} /* line 1619 */
  sim_icache_fetch(819 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) in_count,0,4)); /* line 1621 */
} /* line 1621 */
  sim_icache_fetch(821 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_6, (unsigned int) 2); /* line 1623 */
   __MOV(reg_l0_0, reg_r0_58); /* line 1624 */
} /* line 1624 */
  sim_icache_fetch(823 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_0, reg_r0_2, reg_r0_4); /* line 1626 */
   __MOV(reg_r0_3, 0); /* line 1627 */
} /* line 1627 */
  sim_icache_fetch(825 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 44),0,4)); /* line 1629 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L78X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1630 */
  sim_icache_fetch(827 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 1632 */
} /* line 1632 */
  sim_icache_fetch(828 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) exit_stat,0,4), reg_r0_6); /* line 1634 */
} /* line 1634 */
l_L79X3: ;/* line 1636 */
__LABEL(l_L79X3);
  sim_icache_fetch(830 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(compressf);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 64; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 1638 */
l_L78X3: ;/* line 1641 */
__LABEL(l_L78X3);
  sim_icache_fetch(831 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 40),0,4)); /* line 1642 */
   __MOV(reg_r0_3, 0); /* line 1643 */
} /* line 1643 */
  sim_icache_fetch(833 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L79X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L79X3;
} /* line 1645 */
l_L51X3: ;/* line 1648 */
__LABEL(l_L51X3);
  sim_icache_fetch(834 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_8, (unsigned int) -1); /* line 1649 */
   __GOTO(l_L52X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L52X3;
} /* line 1650 */
l_L47X3: ;/* line 1653 */
__LABEL(l_L47X3);
  sim_icache_fetch(836 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 6); /* line 1654 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1656 */
} /* line 1656 */
  sim_icache_fetch(838 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L49X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L49X3;
} /* line 1658 */
l_L46X3: ;/* line 1661 */
__LABEL(l_L46X3);
  sim_icache_fetch(839 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 5); /* line 1662 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1664 */
} /* line 1664 */
  sim_icache_fetch(841 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L49X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L49X3;
} /* line 1666 */
l_L45X3: ;/* line 1669 */
__LABEL(l_L45X3);
  sim_icache_fetch(842 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 4); /* line 1670 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1672 */
} /* line 1672 */
  sim_icache_fetch(844 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L49X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L49X3;
} /* line 1674 */
l_L44X3: ;/* line 1677 */
__LABEL(l_L44X3);
  sim_icache_fetch(845 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 3); /* line 1678 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1680 */
} /* line 1680 */
  sim_icache_fetch(847 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L49X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L49X3;
} /* line 1682 */
l_L43X3: ;/* line 1685 */
__LABEL(l_L43X3);
  sim_icache_fetch(848 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 2); /* line 1686 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1688 */
} /* line 1688 */
  sim_icache_fetch(850 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L49X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L49X3;
} /* line 1690 */
l_L42X3: ;/* line 1693 */
__LABEL(l_L42X3);
  sim_icache_fetch(851 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 1); /* line 1694 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1696 */
} /* line 1696 */
  sim_icache_fetch(853 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L49X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L49X3;
} /* line 1698 */
l_L41X3: ;/* line 1702 */
__LABEL(l_L41X3);
  sim_icache_fetch(854 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 36),0,4), reg_r0_6); /* line 1703 */
} /* line 1703 */
l_L49X3: ;/* line 1705 */
__LABEL(l_L49X3);
  sim_icache_fetch(855 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_6, (unsigned int) 8, reg_r0_4); /* line 1706 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_r0_5); /* line 1707 */
} /* line 1707 */
  sim_icache_fetch(857 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 40),0,4), reg_r0_57); /* line 1709 */
} /* line 1709 */
  sim_icache_fetch(858 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 44),0,4), reg_r0_58); /* line 1711 */
} /* line 1711 */
  sim_icache_fetch(859 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_6); /* line 1713 */
} /* line 1713 */
  sim_icache_fetch(860 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_57, mem_trace_ld((unsigned int) hsize,0,4)); /* line 1715 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 1716 */
   __ADD_CYCLES(1);
} /* line 1716 */
		 /* line 1717 */
  sim_icache_fetch(863 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_57); /* line 1720 */
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(cl_hash);
   reg_l0_0 = (234 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) cl_hash;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 1720 */
l_lr_130: ;/* line 1720 */
__LABEL(l_lr_130);
  sim_icache_fetch(866 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_7, mem_trace_ld((reg_r0_1 + (unsigned int) 36),0,4)); /* line 1722 */
} /* line 1722 */
  sim_icache_fetch(867 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 1724 */
} /* line 1724 */
  sim_icache_fetch(868 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 1726 */
} /* line 1726 */
  sim_icache_fetch(869 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L50X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L50X3;
} /* line 1728 */
l_L38X3: ;/* line 1731 */
__LABEL(l_L38X3);
  sim_icache_fetch(870 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_9, (unsigned int) -1); /* line 1732 */
   __GOTO(l_L39X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L39X3;
} /* line 1733 */
l_L36X3: ;/* line 1736 */
__LABEL(l_L36X3);
  sim_icache_fetch(872 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1737 */
} /* line 1737 */
  sim_icache_fetch(874 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((unsigned int) magic_header,0,1)); /* line 1739 */
} /* line 1739 */
  sim_icache_fetch(876 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1741 */
   __MOV(reg_r0_5, (unsigned int) 3); /* line 1742 */
} /* line 1742 */
  sim_icache_fetch(878 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_8, (unsigned int) 9); /* line 1744 */
   __MOV(reg_r0_7, (unsigned int) 1); /* line 1745 */
} /* line 1745 */
  sim_icache_fetch(880 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1747 */
} /* line 1747 */
  sim_icache_fetch(882 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_3); /* line 1749 */
} /* line 1749 */
  sim_icache_fetch(883 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1751 */
} /* line 1751 */
  sim_icache_fetch(885 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld(((unsigned int) magic_header + (unsigned int) 1),0,1)); /* line 1753 */
} /* line 1753 */
  sim_icache_fetch(887 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1755 */
} /* line 1755 */
  sim_icache_fetch(888 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1757 */
} /* line 1757 */
  sim_icache_fetch(890 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_3); /* line 1759 */
} /* line 1759 */
  sim_icache_fetch(891 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1761 */
} /* line 1761 */
  sim_icache_fetch(893 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) block_compress,0,4)); /* line 1763 */
} /* line 1763 */
  sim_icache_fetch(895 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1765 */
} /* line 1765 */
  sim_icache_fetch(896 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_9, mem_trace_ld((unsigned int) maxbits,0,4)); /* line 1767 */
} /* line 1767 */
  sim_icache_fetch(898 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1769 */
} /* line 1769 */
  sim_icache_fetch(900 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __OR(reg_r0_3, reg_r0_3, reg_r0_9); /* line 1771 */
} /* line 1771 */
  sim_icache_fetch(901 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_3); /* line 1773 */
   __GOTO(l_L37X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L37X3;
} /* line 1774 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 178: goto l_L37X3;
    case 179: goto l_L39X3;
    case 180: goto l_L40X3;
    case 181: goto l_L48X3;
    case 182: goto l_L50X3;
    case 183: goto l_L52X3;
    case 184: goto l_L54X3;
    case 185: goto l_L56X3;
    case 187: goto l_lr_86;
    case 188: goto l_L57X3;
    case 190: goto l_lr_89;
    case 191: goto l_L58X3;
    case 192: goto l_L55X3;
    case 193: goto l_L59X3;
    case 194: goto l_L75X3;
    case 195: goto l_L74X3;
    case 196: goto l_L73X3;
    case 197: goto l_L72X3;
    case 198: goto l_L71X3;
    case 199: goto l_L70X3;
    case 200: goto l_L69X3;
    case 201: goto l_L68X3;
    case 202: goto l_L67X3;
    case 203: goto l_L66X3;
    case 204: goto l_L65X3;
    case 205: goto l_L64X3;
    case 206: goto l_L63X3;
    case 207: goto l_L62X3;
    case 208: goto l_L61X3;
    case 209: goto l_L60X3;
    case 210: goto l_L76X3;
    case 211: goto l_L53X3;
    case 213: goto l_lr_112;
    case 215: goto l_lr_114;
    case 217: goto l_lr_116;
    case 218: goto l_L77X3;
    case 219: goto l_L79X3;
    case 220: goto l_L78X3;
    case 221: goto l_L51X3;
    case 222: goto l_L47X3;
    case 223: goto l_L46X3;
    case 224: goto l_L45X3;
    case 225: goto l_L44X3;
    case 226: goto l_L43X3;
    case 227: goto l_L42X3;
    case 228: goto l_L41X3;
    case 229: goto l_L49X3;
    case 231: goto l_lr_130;
    case 232: goto l_L38X3;
    case 233: goto l_L36X3;
    case 234:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  output( unsigned int arg0 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(output);  sim_gprof_enter(&sim_gprof_idx,"output");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_l0_0 = (257 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(903 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 1792 */
  sim_icache_fetch(904 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 1794 */
} /* line 1794 */
  sim_icache_fetch(906 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 1796 */
} /* line 1796 */
  sim_icache_fetch(908 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHR(reg_r0_7, reg_r0_2, (unsigned int) 3); /* line 1798 */
   __AND(reg_r0_6, reg_r0_2, (unsigned int) 7); /* line 1799 */
} /* line 1799 */
  sim_icache_fetch(910 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBUs(reg_r0_2, mem_trace_ld((reg_r0_6 + (unsigned int) lmask),0,1)); /* line 1801 */
} /* line 1801 */
  sim_icache_fetch(912 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_3, 0); /* line 1803 */
   __SHL(reg_r0_8, reg_r0_3, reg_r0_6); /* line 1804 */
} /* line 1804 */
  sim_icache_fetch(914 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __AND(reg_r0_2, reg_r0_2, reg_r0_8); /* line 1806 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L80X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1807 */
  sim_icache_fetch(916 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_8, mem_trace_ld((reg_r0_6 + (unsigned int) rmask),0,1)); /* line 1809 */
} /* line 1809 */
  sim_icache_fetch(918 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_9, mem_trace_ld((reg_r0_7 + (unsigned int) compress_10686Xbuf),0,1)); /* line 1811 */
} /* line 1811 */
  sim_icache_fetch(920 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_10, (unsigned int) 8, reg_r0_6); /* line 1813 */
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) -8); /* line 1814 */
} /* line 1814 */
  sim_icache_fetch(922 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __AND(reg_r0_8, reg_r0_8, reg_r0_9); /* line 1816 */
   __SHR(reg_r0_3, reg_r0_3, reg_r0_10); /* line 1817 */
} /* line 1817 */
  sim_icache_fetch(924 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __OR(reg_r0_2, reg_r0_2, reg_r0_8); /* line 1819 */
   __MOV(reg_r0_9, reg_r0_3); /* line 1820 */
} /* line 1820 */
  sim_icache_fetch(926 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_8, reg_r0_7, (unsigned int) compress_10686Xbuf); /* line 1822 */
} /* line 1822 */
  sim_icache_fetch(928 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_10, reg_r0_7, ((unsigned int) compress_10686Xbuf + (unsigned int) 1)); /* line 1824 */
} /* line 1824 */
  sim_icache_fetch(930 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, reg_r0_6); /* line 1826 */
} /* line 1826 */
  sim_icache_fetch(931 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_5, (unsigned int) 8); /* line 1828 */
} /* line 1828 */
  sim_icache_fetch(932 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_7 + (unsigned int) compress_10686Xbuf),0,1), reg_r0_2); /* line 1830 */
} /* line 1830 */
  sim_icache_fetch(934 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L81X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1832 */
  sim_icache_fetch(935 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_10, reg_r0_8, (unsigned int) 2); /* line 1834 */
   __SHR(reg_r0_9, reg_r0_3, (unsigned int) 8); /* line 1835 */
} /* line 1835 */
  sim_icache_fetch(937 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_8 + (unsigned int) 1),0,1), reg_r0_3); /* line 1837 */
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) -8); /* line 1838 */
} /* line 1838 */
l_L81X3: ;/* line 1840 */
__LABEL(l_L81X3);
  sim_icache_fetch(939 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_0, reg_r0_5, 0); /* line 1841 */
} /* line 1841 */
  sim_icache_fetch(940 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L82X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1843 */
  sim_icache_fetch(941 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) compress_10686Xbuf); /* line 1845 */
} /* line 1845 */
  sim_icache_fetch(943 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_10,0,1), reg_r0_9); /* line 1847 */
} /* line 1847 */
l_L83X3: ;/* line 1849 */
__LABEL(l_L83X3);
  sim_icache_fetch(944 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 1850 */
} /* line 1850 */
  sim_icache_fetch(946 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 1852 */
} /* line 1852 */
  sim_icache_fetch(948 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 1854 */
} /* line 1854 */
  sim_icache_fetch(950 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, reg_r0_5); /* line 1856 */
   __SHL(reg_r0_7, reg_r0_5, (unsigned int) 3); /* line 1857 */
} /* line 1857 */
  sim_icache_fetch(952 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_2, reg_r0_7); /* line 1859 */
   __ADD(reg_r0_6, reg_r0_5, reg_r0_6); /* line 1860 */
} /* line 1860 */
  sim_icache_fetch(954 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, reg_r0_5); /* line 1862 */
} /* line 1862 */
  sim_icache_fetch(955 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) compress_10686Xoffset,0,4), reg_r0_2); /* line 1864 */
} /* line 1864 */
  sim_icache_fetch(957 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L84X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1866 */
  sim_icache_fetch(958 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bytes_out,0,4), reg_r0_6); /* line 1868 */
} /* line 1868 */
l_L85X3: ;/* line 1871 */
__LABEL(l_L85X3);
  sim_icache_fetch(960 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1872 */
} /* line 1872 */
  sim_icache_fetch(962 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_5, mem_trace_ld(reg_r0_3,0,1)); /* line 1874 */
   __CMPEQ(reg_b0_0, reg_r0_4, (unsigned int) 1); /* line 1875 */
} /* line 1875 */
  sim_icache_fetch(964 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1877 */
   __CMPEQ(reg_b0_1, reg_r0_4, (unsigned int) 2); /* line 1878 */
} /* line 1878 */
  sim_icache_fetch(966 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_2, reg_r0_4, (unsigned int) 3); /* line 1880 */
   __CMPEQ(reg_b0_3, reg_r0_4, (unsigned int) 4); /* line 1881 */
} /* line 1881 */
  sim_icache_fetch(968 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_4, reg_r0_4, (unsigned int) 5); /* line 1883 */
   __CMPEQ(reg_b0_5, reg_r0_4, (unsigned int) 6); /* line 1884 */
} /* line 1884 */
  sim_icache_fetch(970 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_6, reg_r0_4, (unsigned int) 7); /* line 1886 */
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) -8); /* line 1887 */
} /* line 1887 */
  sim_icache_fetch(972 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_7, reg_r0_4, 0); /* line 1889 */
} /* line 1889 */
  sim_icache_fetch(973 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1891 */
} /* line 1891 */
  sim_icache_fetch(975 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1893 */
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1894 */
  sim_icache_fetch(977 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1896 */
} /* line 1896 */
  sim_icache_fetch(979 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_5, mem_trace_ld((reg_r0_3 + (unsigned int) 1),0,1)); /* line 1898 */
} /* line 1898 */
  sim_icache_fetch(980 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1900 */
} /* line 1900 */
  sim_icache_fetch(981 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1902 */
} /* line 1902 */
  sim_icache_fetch(983 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1904 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1905 */
  sim_icache_fetch(985 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1907 */
} /* line 1907 */
  sim_icache_fetch(987 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_5, mem_trace_ld((reg_r0_3 + (unsigned int) 2),0,1)); /* line 1909 */
} /* line 1909 */
  sim_icache_fetch(988 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1911 */
} /* line 1911 */
  sim_icache_fetch(989 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1913 */
} /* line 1913 */
  sim_icache_fetch(991 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1915 */
   if (reg_b0_2) {    __BRANCH(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1916 */
  sim_icache_fetch(993 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1918 */
} /* line 1918 */
  sim_icache_fetch(995 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_5, mem_trace_ld((reg_r0_3 + (unsigned int) 3),0,1)); /* line 1920 */
} /* line 1920 */
  sim_icache_fetch(996 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1922 */
} /* line 1922 */
  sim_icache_fetch(997 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1924 */
} /* line 1924 */
  sim_icache_fetch(999 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1926 */
   if (reg_b0_3) {    __BRANCH(reg_b0_3);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1927 */
  sim_icache_fetch(1001 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1929 */
} /* line 1929 */
  sim_icache_fetch(1003 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_5, mem_trace_ld((reg_r0_3 + (unsigned int) 4),0,1)); /* line 1931 */
} /* line 1931 */
  sim_icache_fetch(1004 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1933 */
} /* line 1933 */
  sim_icache_fetch(1005 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1935 */
} /* line 1935 */
  sim_icache_fetch(1007 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1937 */
   if (reg_b0_4) {    __BRANCH(reg_b0_4);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1938 */
  sim_icache_fetch(1009 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1940 */
} /* line 1940 */
  sim_icache_fetch(1011 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_5, mem_trace_ld((reg_r0_3 + (unsigned int) 5),0,1)); /* line 1942 */
} /* line 1942 */
  sim_icache_fetch(1012 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1944 */
} /* line 1944 */
  sim_icache_fetch(1013 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1946 */
} /* line 1946 */
  sim_icache_fetch(1015 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1948 */
   if (reg_b0_5) {    __BRANCH(reg_b0_5);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1949 */
  sim_icache_fetch(1017 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1951 */
} /* line 1951 */
  sim_icache_fetch(1019 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_5, mem_trace_ld((reg_r0_3 + (unsigned int) 6),0,1)); /* line 1953 */
} /* line 1953 */
  sim_icache_fetch(1020 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1955 */
} /* line 1955 */
  sim_icache_fetch(1021 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1957 */
} /* line 1957 */
  sim_icache_fetch(1023 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1959 */
   if (reg_b0_6) {    __BRANCH(reg_b0_6);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1960 */
  sim_icache_fetch(1025 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 1962 */
} /* line 1962 */
  sim_icache_fetch(1027 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_5, mem_trace_ld((reg_r0_3 + (unsigned int) 7),0,1)); /* line 1964 */
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) 8); /* line 1965 */
} /* line 1965 */
  sim_icache_fetch(1029 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 1967 */
} /* line 1967 */
  sim_icache_fetch(1030 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_6); /* line 1969 */
} /* line 1969 */
  sim_icache_fetch(1032 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_5); /* line 1971 */
   if (reg_b0_7) {    __BRANCH(reg_b0_7);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L86X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1973 */
  sim_icache_fetch(1034 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L85X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L85X3;
} /* line 1975 */
l_L86X3: ;/* line 1978 */
__LABEL(l_L86X3);
  sim_icache_fetch(1035 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) compress_10686Xoffset,0,4), 0); /* line 1979 */
} /* line 1979 */
l_L84X3: ;/* line 1982 */
__LABEL(l_L84X3);
  sim_icache_fetch(1037 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) free_ent,0,4)); /* line 1983 */
} /* line 1983 */
  sim_icache_fetch(1039 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_12, mem_trace_ld((unsigned int) maxcode,0,4)); /* line 1985 */
} /* line 1985 */
  sim_icache_fetch(1041 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_13, mem_trace_ld((unsigned int) clear_flg,0,4)); /* line 1987 */
} /* line 1987 */
  sim_icache_fetch(1043 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_r0_2, reg_r0_2, reg_r0_12); /* line 1989 */
   __MOV(reg_r0_11, (unsigned int) 7); /* line 1990 */
} /* line 1990 */
  sim_icache_fetch(1045 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_r0_13, reg_r0_13, 0); /* line 1992 */
   __MOV(reg_r0_10, (unsigned int) 6); /* line 1993 */
} /* line 1993 */
  sim_icache_fetch(1047 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ORL(reg_b0_0, reg_r0_2, reg_r0_13); /* line 1995 */
   __MOV(reg_r0_9, (unsigned int) 5); /* line 1996 */
} /* line 1996 */
  sim_icache_fetch(1049 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_8, (unsigned int) 4); /* line 1998 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L87X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 1999 */
  sim_icache_fetch(1051 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2001 */
} /* line 2001 */
  sim_icache_fetch(1053 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_6, (unsigned int) 2); /* line 2003 */
   __MOV(reg_r0_7, (unsigned int) 3); /* line 2004 */
} /* line 2004 */
  sim_icache_fetch(1055 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_0, reg_r0_2, 0); /* line 2006 */
   __MOV(reg_r0_5, (unsigned int) 1); /* line 2007 */
} /* line 2007 */
  sim_icache_fetch(1057 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, 0); /* line 2009 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L88X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2010 */
  sim_icache_fetch(1059 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) compress_10686Xbuf); /* line 2012 */
} /* line 2012 */
l_L89X3: ;/* line 2015 */
__LABEL(l_L89X3);
  sim_icache_fetch(1061 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2016 */
} /* line 2016 */
  sim_icache_fetch(1063 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2018 */
} /* line 2018 */
  sim_icache_fetch(1065 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_3, reg_r0_2); /* line 2020 */
   __LDBs(reg_r0_2, mem_trace_ld(reg_r0_4,0,1)); /* line 2021 */
} /* line 2021 */
  sim_icache_fetch(1067 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2023 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2024 */
  sim_icache_fetch(1069 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) 8); /* line 2026 */
} /* line 2026 */
  sim_icache_fetch(1070 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2028 */
} /* line 2028 */
  sim_icache_fetch(1072 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2030 */
} /* line 2030 */
  sim_icache_fetch(1073 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2032 */
} /* line 2032 */
  sim_icache_fetch(1075 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2034 */
} /* line 2034 */
  sim_icache_fetch(1077 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_5, reg_r0_2); /* line 2036 */
   __LDBs(reg_r0_2, mem_trace_ld((reg_r0_4 + (unsigned int) 1),0,1)); /* line 2037 */
} /* line 2037 */
  sim_icache_fetch(1079 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2039 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2040 */
  sim_icache_fetch(1081 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 8); /* line 2042 */
} /* line 2042 */
  sim_icache_fetch(1082 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2044 */
} /* line 2044 */
  sim_icache_fetch(1084 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2046 */
} /* line 2046 */
  sim_icache_fetch(1085 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2048 */
} /* line 2048 */
  sim_icache_fetch(1087 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2050 */
} /* line 2050 */
  sim_icache_fetch(1089 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_6, reg_r0_2); /* line 2052 */
   __LDBs(reg_r0_2, mem_trace_ld((reg_r0_4 + (unsigned int) 2),0,1)); /* line 2053 */
} /* line 2053 */
  sim_icache_fetch(1091 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2055 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2056 */
  sim_icache_fetch(1093 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) 8); /* line 2058 */
} /* line 2058 */
  sim_icache_fetch(1094 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2060 */
} /* line 2060 */
  sim_icache_fetch(1096 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2062 */
} /* line 2062 */
  sim_icache_fetch(1097 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2064 */
} /* line 2064 */
  sim_icache_fetch(1099 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2066 */
} /* line 2066 */
  sim_icache_fetch(1101 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_7, reg_r0_2); /* line 2068 */
   __LDBs(reg_r0_2, mem_trace_ld((reg_r0_4 + (unsigned int) 3),0,1)); /* line 2069 */
} /* line 2069 */
  sim_icache_fetch(1103 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2071 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2072 */
  sim_icache_fetch(1105 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) 8); /* line 2074 */
} /* line 2074 */
  sim_icache_fetch(1106 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2076 */
} /* line 2076 */
  sim_icache_fetch(1108 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2078 */
} /* line 2078 */
  sim_icache_fetch(1109 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2080 */
} /* line 2080 */
  sim_icache_fetch(1111 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2082 */
} /* line 2082 */
  sim_icache_fetch(1113 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_8, reg_r0_2); /* line 2084 */
   __LDBs(reg_r0_2, mem_trace_ld((reg_r0_4 + (unsigned int) 4),0,1)); /* line 2085 */
} /* line 2085 */
  sim_icache_fetch(1115 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2087 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2088 */
  sim_icache_fetch(1117 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_8, reg_r0_8, (unsigned int) 8); /* line 2090 */
} /* line 2090 */
  sim_icache_fetch(1118 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2092 */
} /* line 2092 */
  sim_icache_fetch(1120 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2094 */
} /* line 2094 */
  sim_icache_fetch(1121 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2096 */
} /* line 2096 */
  sim_icache_fetch(1123 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2098 */
} /* line 2098 */
  sim_icache_fetch(1125 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_9, reg_r0_2); /* line 2100 */
   __LDBs(reg_r0_2, mem_trace_ld((reg_r0_4 + (unsigned int) 5),0,1)); /* line 2101 */
} /* line 2101 */
  sim_icache_fetch(1127 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2103 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2104 */
  sim_icache_fetch(1129 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_9, (unsigned int) 8); /* line 2106 */
} /* line 2106 */
  sim_icache_fetch(1130 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2108 */
} /* line 2108 */
  sim_icache_fetch(1132 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2110 */
} /* line 2110 */
  sim_icache_fetch(1133 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2112 */
} /* line 2112 */
  sim_icache_fetch(1135 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2114 */
} /* line 2114 */
  sim_icache_fetch(1137 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_10, reg_r0_2); /* line 2116 */
   __LDBs(reg_r0_2, mem_trace_ld((reg_r0_4 + (unsigned int) 6),0,1)); /* line 2117 */
} /* line 2117 */
  sim_icache_fetch(1139 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2119 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2120 */
  sim_icache_fetch(1141 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_10, reg_r0_10, (unsigned int) 8); /* line 2122 */
} /* line 2122 */
  sim_icache_fetch(1142 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2124 */
} /* line 2124 */
  sim_icache_fetch(1144 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2126 */
} /* line 2126 */
  sim_icache_fetch(1145 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2128 */
} /* line 2128 */
  sim_icache_fetch(1147 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_12, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2130 */
} /* line 2130 */
  sim_icache_fetch(1149 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_11, reg_r0_2); /* line 2132 */
   __LDBs(reg_r0_2, mem_trace_ld((reg_r0_4 + (unsigned int) 7),0,1)); /* line 2133 */
} /* line 2133 */
  sim_icache_fetch(1151 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 1); /* line 2135 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L90X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2136 */
  sim_icache_fetch(1153 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_11, reg_r0_11, (unsigned int) 8); /* line 2138 */
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 8); /* line 2139 */
} /* line 2139 */
  sim_icache_fetch(1155 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2141 */
} /* line 2141 */
  sim_icache_fetch(1157 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_12,0,1), reg_r0_2); /* line 2143 */
   __GOTO(l_L89X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L89X3;
} /* line 2144 */
l_L90X3: ;/* line 2147 */
__LABEL(l_L90X3);
  sim_icache_fetch(1159 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2148 */
} /* line 2148 */
  sim_icache_fetch(1161 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2150 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2151 */
   __ADD_CYCLES(1);
} /* line 2151 */
  sim_icache_fetch(1164 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, reg_r0_3); /* line 2153 */
} /* line 2153 */
  sim_icache_fetch(1165 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bytes_out,0,4), reg_r0_2); /* line 2155 */
} /* line 2155 */
l_L88X3: ;/* line 2158 */
__LABEL(l_L88X3);
  sim_icache_fetch(1167 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) clear_flg,0,4)); /* line 2159 */
} /* line 2159 */
  sim_icache_fetch(1169 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 9); /* line 2161 */
} /* line 2161 */
  sim_icache_fetch(1170 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_0, reg_r0_2, 0); /* line 2163 */
} /* line 2163 */
  sim_icache_fetch(1171 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_2, (unsigned int) 511); /* line 2165 */
} /* line 2165 */
  sim_icache_fetch(1173 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) compress_10686Xoffset,0,4), 0); /* line 2167 */
} /* line 2167 */
  sim_icache_fetch(1175 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L91X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2169 */
  sim_icache_fetch(1176 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) n_bits,0,4), reg_r0_3); /* line 2171 */
} /* line 2171 */
  sim_icache_fetch(1178 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_2); /* line 2173 */
} /* line 2173 */
  sim_icache_fetch(1180 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) clear_flg,0,4), 0); /* line 2176 */
} /* line 2176 */
  sim_icache_fetch(1182 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L87X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L87X3;
} /* line 2178 */
l_L91X3: ;/* line 2181 */
__LABEL(l_L91X3);
  sim_icache_fetch(1183 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2182 */
} /* line 2182 */
  sim_icache_fetch(1185 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) maxbits,0,4)); /* line 2184 */
} /* line 2184 */
  sim_icache_fetch(1187 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 1); /* line 2186 */
} /* line 2186 */
  sim_icache_fetch(1188 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_0, reg_r0_2, reg_r0_3); /* line 2188 */
} /* line 2188 */
  sim_icache_fetch(1189 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_3, mem_trace_ld((unsigned int) maxmaxcode,0,4)); /* line 2190 */
} /* line 2190 */
  sim_icache_fetch(1191 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) n_bits,0,4), reg_r0_2); /* line 2192 */
} /* line 2192 */
  sim_icache_fetch(1193 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L92X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2194 */
  sim_icache_fetch(1194 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_3); /* line 2197 */
} /* line 2197 */
  sim_icache_fetch(1196 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L87X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L87X3;
} /* line 2199 */
l_L92X3: ;/* line 2202 */
__LABEL(l_L92X3);
  sim_icache_fetch(1197 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 2203 */
} /* line 2203 */
  sim_icache_fetch(1199 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 2205 */
} /* line 2205 */
  sim_icache_fetch(1200 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHL(reg_r0_3, reg_r0_3, reg_r0_2); /* line 2207 */
} /* line 2207 */
  sim_icache_fetch(1201 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) -1); /* line 2209 */
} /* line 2209 */
  sim_icache_fetch(1202 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_3); /* line 2212 */
} /* line 2212 */
  sim_icache_fetch(1204 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L87X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L87X3;
} /* line 2214 */
l_L82X3: ;/* line 2217 */
__LABEL(l_L82X3);
  sim_icache_fetch(1205 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) compress_10686Xbuf); /* line 2219 */
} /* line 2219 */
  sim_icache_fetch(1207 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L83X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L83X3;
} /* line 2221 */
l_L80X3: ;/* line 2224 */
__LABEL(l_L80X3);
  sim_icache_fetch(1208 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2225 */
} /* line 2225 */
  sim_icache_fetch(1210 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_3, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2227 */
} /* line 2227 */
  sim_icache_fetch(1212 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2229 */
} /* line 2229 */
  sim_icache_fetch(1213 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2231 */
   __ADD(reg_r0_4, reg_r0_2, (unsigned int) 7); /* line 2232 */
} /* line 2232 */
  sim_icache_fetch(1215 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_4, reg_b0_0, reg_r0_4, reg_r0_2); /* line 2234 */
} /* line 2234 */
  sim_icache_fetch(1216 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_4, reg_r0_4, (unsigned int) 3); /* line 2236 */
} /* line 2236 */
  sim_icache_fetch(1217 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_3, reg_r0_3, reg_r0_4); /* line 2238 */
} /* line 2238 */
  sim_icache_fetch(1218 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2240 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2241 */
   __ADD_CYCLES(1);
} /* line 2241 */
  sim_icache_fetch(1221 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGT(reg_b0_0, reg_r0_2, 0); /* line 2243 */
} /* line 2243 */
  sim_icache_fetch(1222 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L93X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2245 */
l_L94X3: ;/* line 2247 */
__LABEL(l_L94X3);
  sim_icache_fetch(1223 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bytes_out,0,4), reg_r0_3); /* line 2248 */
} /* line 2248 */
  sim_icache_fetch(1225 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) compress_10686Xoffset,0,4), 0); /* line 2250 */
} /* line 2250 */
l_L87X3: ;/* line 2252 */
__LABEL(l_L87X3);
  sim_icache_fetch(1227 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(output);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 2254 */
l_L93X3: ;/* line 2257 */
__LABEL(l_L93X3);
  sim_icache_fetch(1228 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_8, (unsigned int) 4); /* line 2258 */
   __MOV(reg_r0_9, (unsigned int) 5); /* line 2259 */
} /* line 2259 */
  sim_icache_fetch(1230 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_6, (unsigned int) 2); /* line 2261 */
   __MOV(reg_r0_7, (unsigned int) 3); /* line 2262 */
} /* line 2262 */
  sim_icache_fetch(1232 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_5, (unsigned int) 1); /* line 2264 */
   __MOV(reg_r0_3, 0); /* line 2265 */
} /* line 2265 */
  sim_icache_fetch(1234 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) compress_10686Xbuf); /* line 2267 */
} /* line 2267 */
l_L95X3: ;/* line 2270 */
__LABEL(l_L95X3);
  sim_icache_fetch(1236 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2271 */
} /* line 2271 */
  sim_icache_fetch(1238 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_10, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2273 */
} /* line 2273 */
  sim_icache_fetch(1240 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2275 */
   __LDBs(reg_r0_11, mem_trace_ld(reg_r0_4,0,1)); /* line 2276 */
} /* line 2276 */
  sim_icache_fetch(1242 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2278 */
   __ADD(reg_r0_12, reg_r0_2, (unsigned int) 7); /* line 2279 */
} /* line 2279 */
  sim_icache_fetch(1244 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_12, reg_b0_0, reg_r0_12, reg_r0_2); /* line 2281 */
   __ADD(reg_r0_2, reg_r0_10, (unsigned int) 1); /* line 2282 */
} /* line 2282 */
  sim_icache_fetch(1246 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_12, reg_r0_12, (unsigned int) 3); /* line 2284 */
} /* line 2284 */
  sim_icache_fetch(1247 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_3, reg_r0_12); /* line 2286 */
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) 6); /* line 2287 */
} /* line 2287 */
  sim_icache_fetch(1249 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L96X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2289 */
  sim_icache_fetch(1250 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_2); /* line 2291 */
} /* line 2291 */
  sim_icache_fetch(1252 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_10,0,1), reg_r0_11); /* line 2293 */
} /* line 2293 */
  sim_icache_fetch(1253 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2295 */
} /* line 2295 */
  sim_icache_fetch(1255 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_10, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2297 */
} /* line 2297 */
  sim_icache_fetch(1257 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2299 */
   __LDBs(reg_r0_11, mem_trace_ld((reg_r0_4 + (unsigned int) 1),0,1)); /* line 2300 */
} /* line 2300 */
  sim_icache_fetch(1259 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2302 */
   __ADD(reg_r0_12, reg_r0_2, (unsigned int) 7); /* line 2303 */
} /* line 2303 */
  sim_icache_fetch(1261 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_12, reg_b0_0, reg_r0_12, reg_r0_2); /* line 2305 */
   __ADD(reg_r0_2, reg_r0_10, (unsigned int) 1); /* line 2306 */
} /* line 2306 */
  sim_icache_fetch(1263 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_12, reg_r0_12, (unsigned int) 3); /* line 2308 */
} /* line 2308 */
  sim_icache_fetch(1264 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_5, reg_r0_12); /* line 2310 */
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 6); /* line 2311 */
} /* line 2311 */
  sim_icache_fetch(1266 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L97X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2313 */
  sim_icache_fetch(1267 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_2); /* line 2315 */
} /* line 2315 */
  sim_icache_fetch(1269 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_10,0,1), reg_r0_11); /* line 2317 */
} /* line 2317 */
  sim_icache_fetch(1270 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2319 */
} /* line 2319 */
  sim_icache_fetch(1272 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_10, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2321 */
} /* line 2321 */
  sim_icache_fetch(1274 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2323 */
   __LDBs(reg_r0_11, mem_trace_ld((reg_r0_4 + (unsigned int) 2),0,1)); /* line 2324 */
} /* line 2324 */
  sim_icache_fetch(1276 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2326 */
   __ADD(reg_r0_12, reg_r0_2, (unsigned int) 7); /* line 2327 */
} /* line 2327 */
  sim_icache_fetch(1278 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_12, reg_b0_0, reg_r0_12, reg_r0_2); /* line 2329 */
   __ADD(reg_r0_2, reg_r0_10, (unsigned int) 1); /* line 2330 */
} /* line 2330 */
  sim_icache_fetch(1280 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_12, reg_r0_12, (unsigned int) 3); /* line 2332 */
} /* line 2332 */
  sim_icache_fetch(1281 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_6, reg_r0_12); /* line 2334 */
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) 6); /* line 2335 */
} /* line 2335 */
  sim_icache_fetch(1283 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L98X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2337 */
  sim_icache_fetch(1284 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_2); /* line 2339 */
} /* line 2339 */
  sim_icache_fetch(1286 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_10,0,1), reg_r0_11); /* line 2341 */
} /* line 2341 */
  sim_icache_fetch(1287 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2343 */
} /* line 2343 */
  sim_icache_fetch(1289 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_10, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2345 */
} /* line 2345 */
  sim_icache_fetch(1291 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2347 */
   __LDBs(reg_r0_11, mem_trace_ld((reg_r0_4 + (unsigned int) 3),0,1)); /* line 2348 */
} /* line 2348 */
  sim_icache_fetch(1293 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2350 */
   __ADD(reg_r0_12, reg_r0_2, (unsigned int) 7); /* line 2351 */
} /* line 2351 */
  sim_icache_fetch(1295 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_12, reg_b0_0, reg_r0_12, reg_r0_2); /* line 2353 */
   __ADD(reg_r0_2, reg_r0_10, (unsigned int) 1); /* line 2354 */
} /* line 2354 */
  sim_icache_fetch(1297 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_12, reg_r0_12, (unsigned int) 3); /* line 2356 */
} /* line 2356 */
  sim_icache_fetch(1298 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_7, reg_r0_12); /* line 2358 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) 6); /* line 2359 */
} /* line 2359 */
  sim_icache_fetch(1300 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L99X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2361 */
  sim_icache_fetch(1301 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_2); /* line 2363 */
} /* line 2363 */
  sim_icache_fetch(1303 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_10,0,1), reg_r0_11); /* line 2365 */
} /* line 2365 */
  sim_icache_fetch(1304 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2367 */
} /* line 2367 */
  sim_icache_fetch(1306 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_10, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2369 */
} /* line 2369 */
  sim_icache_fetch(1308 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2371 */
   __LDBs(reg_r0_11, mem_trace_ld((reg_r0_4 + (unsigned int) 4),0,1)); /* line 2372 */
} /* line 2372 */
  sim_icache_fetch(1310 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2374 */
   __ADD(reg_r0_12, reg_r0_2, (unsigned int) 7); /* line 2375 */
} /* line 2375 */
  sim_icache_fetch(1312 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_12, reg_b0_0, reg_r0_12, reg_r0_2); /* line 2377 */
   __ADD(reg_r0_2, reg_r0_10, (unsigned int) 1); /* line 2378 */
} /* line 2378 */
  sim_icache_fetch(1314 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_12, reg_r0_12, (unsigned int) 3); /* line 2380 */
} /* line 2380 */
  sim_icache_fetch(1315 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_8, reg_r0_12); /* line 2382 */
   __ADD(reg_r0_8, reg_r0_8, (unsigned int) 6); /* line 2383 */
} /* line 2383 */
  sim_icache_fetch(1317 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L100X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2385 */
  sim_icache_fetch(1318 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_2); /* line 2387 */
} /* line 2387 */
  sim_icache_fetch(1320 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_10,0,1), reg_r0_11); /* line 2389 */
} /* line 2389 */
  sim_icache_fetch(1321 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2391 */
} /* line 2391 */
  sim_icache_fetch(1323 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_10, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2393 */
} /* line 2393 */
  sim_icache_fetch(1325 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2395 */
   __LDBs(reg_r0_11, mem_trace_ld((reg_r0_4 + (unsigned int) 5),0,1)); /* line 2396 */
} /* line 2396 */
  sim_icache_fetch(1327 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2398 */
   __ADD(reg_r0_12, reg_r0_2, (unsigned int) 7); /* line 2399 */
} /* line 2399 */
  sim_icache_fetch(1329 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_12, reg_b0_0, reg_r0_12, reg_r0_2); /* line 2401 */
   __ADD(reg_r0_2, reg_r0_10, (unsigned int) 1); /* line 2402 */
} /* line 2402 */
  sim_icache_fetch(1331 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHR(reg_r0_12, reg_r0_12, (unsigned int) 3); /* line 2404 */
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 6); /* line 2405 */
} /* line 2405 */
  sim_icache_fetch(1333 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_9, reg_r0_12); /* line 2407 */
   __ADD(reg_r0_9, reg_r0_9, (unsigned int) 6); /* line 2408 */
} /* line 2408 */
  sim_icache_fetch(1335 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L101X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2410 */
  sim_icache_fetch(1336 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_2); /* line 2412 */
} /* line 2412 */
  sim_icache_fetch(1338 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_10,0,1), reg_r0_11); /* line 2414 */
   __GOTO(l_L95X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L95X3;
} /* line 2415 */
l_L101X3: ;/* line 2418 */
__LABEL(l_L101X3);
  sim_icache_fetch(1340 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2419 */
} /* line 2419 */
  sim_icache_fetch(1342 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2421 */
} /* line 2421 */
  sim_icache_fetch(1344 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2423 */
} /* line 2423 */
  sim_icache_fetch(1345 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2425 */
   __ADD(reg_r0_5, reg_r0_2, (unsigned int) 7); /* line 2426 */
} /* line 2426 */
  sim_icache_fetch(1347 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_5, reg_b0_0, reg_r0_5, reg_r0_2); /* line 2428 */
} /* line 2428 */
  sim_icache_fetch(1348 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_5, reg_r0_5, (unsigned int) 3); /* line 2430 */
} /* line 2430 */
  sim_icache_fetch(1349 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_3, reg_r0_4, reg_r0_5); /* line 2432 */
   __GOTO(l_L94X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L94X3;
} /* line 2433 */
l_L100X3: ;/* line 2436 */
__LABEL(l_L100X3);
  sim_icache_fetch(1351 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2437 */
} /* line 2437 */
  sim_icache_fetch(1353 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2439 */
} /* line 2439 */
  sim_icache_fetch(1355 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2441 */
} /* line 2441 */
  sim_icache_fetch(1356 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2443 */
   __ADD(reg_r0_5, reg_r0_2, (unsigned int) 7); /* line 2444 */
} /* line 2444 */
  sim_icache_fetch(1358 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_5, reg_b0_0, reg_r0_5, reg_r0_2); /* line 2446 */
} /* line 2446 */
  sim_icache_fetch(1359 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_5, reg_r0_5, (unsigned int) 3); /* line 2448 */
} /* line 2448 */
  sim_icache_fetch(1360 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_3, reg_r0_4, reg_r0_5); /* line 2450 */
   __GOTO(l_L94X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L94X3;
} /* line 2451 */
l_L99X3: ;/* line 2454 */
__LABEL(l_L99X3);
  sim_icache_fetch(1362 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2455 */
} /* line 2455 */
  sim_icache_fetch(1364 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2457 */
} /* line 2457 */
  sim_icache_fetch(1366 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2459 */
} /* line 2459 */
  sim_icache_fetch(1367 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2461 */
   __ADD(reg_r0_5, reg_r0_2, (unsigned int) 7); /* line 2462 */
} /* line 2462 */
  sim_icache_fetch(1369 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_5, reg_b0_0, reg_r0_5, reg_r0_2); /* line 2464 */
} /* line 2464 */
  sim_icache_fetch(1370 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_5, reg_r0_5, (unsigned int) 3); /* line 2466 */
} /* line 2466 */
  sim_icache_fetch(1371 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_3, reg_r0_4, reg_r0_5); /* line 2468 */
   __GOTO(l_L94X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L94X3;
} /* line 2469 */
l_L98X3: ;/* line 2472 */
__LABEL(l_L98X3);
  sim_icache_fetch(1373 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2473 */
} /* line 2473 */
  sim_icache_fetch(1375 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2475 */
} /* line 2475 */
  sim_icache_fetch(1377 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2477 */
} /* line 2477 */
  sim_icache_fetch(1378 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2479 */
   __ADD(reg_r0_5, reg_r0_2, (unsigned int) 7); /* line 2480 */
} /* line 2480 */
  sim_icache_fetch(1380 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_5, reg_b0_0, reg_r0_5, reg_r0_2); /* line 2482 */
} /* line 2482 */
  sim_icache_fetch(1381 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_5, reg_r0_5, (unsigned int) 3); /* line 2484 */
} /* line 2484 */
  sim_icache_fetch(1382 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_3, reg_r0_4, reg_r0_5); /* line 2486 */
   __GOTO(l_L94X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L94X3;
} /* line 2487 */
l_L97X3: ;/* line 2490 */
__LABEL(l_L97X3);
  sim_icache_fetch(1384 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2491 */
} /* line 2491 */
  sim_icache_fetch(1386 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2493 */
} /* line 2493 */
  sim_icache_fetch(1388 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2495 */
} /* line 2495 */
  sim_icache_fetch(1389 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2497 */
   __ADD(reg_r0_5, reg_r0_2, (unsigned int) 7); /* line 2498 */
} /* line 2498 */
  sim_icache_fetch(1391 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_5, reg_b0_0, reg_r0_5, reg_r0_2); /* line 2500 */
} /* line 2500 */
  sim_icache_fetch(1392 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_5, reg_r0_5, (unsigned int) 3); /* line 2502 */
} /* line 2502 */
  sim_icache_fetch(1393 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_3, reg_r0_4, reg_r0_5); /* line 2504 */
   __GOTO(l_L94X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L94X3;
} /* line 2505 */
l_L96X3: ;/* line 2508 */
__LABEL(l_L96X3);
  sim_icache_fetch(1395 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) compress_10686Xoffset,0,4)); /* line 2509 */
} /* line 2509 */
  sim_icache_fetch(1397 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 2511 */
} /* line 2511 */
  sim_icache_fetch(1399 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) 7); /* line 2513 */
} /* line 2513 */
  sim_icache_fetch(1400 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_2, 0); /* line 2515 */
   __ADD(reg_r0_5, reg_r0_2, (unsigned int) 7); /* line 2516 */
} /* line 2516 */
  sim_icache_fetch(1402 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_5, reg_b0_0, reg_r0_5, reg_r0_2); /* line 2518 */
} /* line 2518 */
  sim_icache_fetch(1403 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_5, reg_r0_5, (unsigned int) 3); /* line 2520 */
} /* line 2520 */
  sim_icache_fetch(1404 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_3, reg_r0_4, reg_r0_5); /* line 2522 */
   __GOTO(l_L94X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L94X3;
} /* line 2523 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 235: goto l_L81X3;
    case 236: goto l_L83X3;
    case 237: goto l_L85X3;
    case 238: goto l_L86X3;
    case 239: goto l_L84X3;
    case 240: goto l_L89X3;
    case 241: goto l_L90X3;
    case 242: goto l_L88X3;
    case 243: goto l_L91X3;
    case 244: goto l_L92X3;
    case 245: goto l_L82X3;
    case 246: goto l_L80X3;
    case 247: goto l_L94X3;
    case 248: goto l_L87X3;
    case 249: goto l_L93X3;
    case 250: goto l_L95X3;
    case 251: goto l_L101X3;
    case 252: goto l_L100X3;
    case 253: goto l_L99X3;
    case 254: goto l_L98X3;
    case 255: goto l_L97X3;
    case 256: goto l_L96X3;
    case 257:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int decompress(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(decompress);  sim_gprof_enter(&sim_gprof_idx,"decompress");

  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (295 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(1406 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 2539 */
} /* line 2539 */
  sim_icache_fetch(1407 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_12, (unsigned int) 9); /* line 2541 */
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 2542 */
} /* line 2542 */
  sim_icache_fetch(1409 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_13, (unsigned int) 511); /* line 2544 */
} /* line 2544 */
  sim_icache_fetch(1411 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_10, (unsigned int) 249); /* line 2546 */
   __MOV(reg_r0_11, (unsigned int) 248); /* line 2547 */
} /* line 2547 */
  sim_icache_fetch(1413 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_8, (unsigned int) 251); /* line 2549 */
   __MOV(reg_r0_9, (unsigned int) 250); /* line 2550 */
} /* line 2550 */
  sim_icache_fetch(1415 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_6, (unsigned int) 253); /* line 2552 */
   __MOV(reg_r0_7, (unsigned int) 252); /* line 2553 */
} /* line 2553 */
  sim_icache_fetch(1417 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, (unsigned int) 255); /* line 2555 */
   __MOV(reg_r0_5, (unsigned int) 254); /* line 2556 */
} /* line 2556 */
  sim_icache_fetch(1419 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, ((unsigned int) htab + (unsigned int) 248)); /* line 2558 */
} /* line 2558 */
  sim_icache_fetch(1421 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, ((unsigned int) codetab + (unsigned int) 496)); /* line 2560 */
} /* line 2560 */
  sim_icache_fetch(1423 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) n_bits,0,4), reg_r0_12); /* line 2562 */
} /* line 2562 */
  sim_icache_fetch(1425 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_13); /* line 2564 */
} /* line 2564 */
l_L102X3: ;/* line 2567 */
__LABEL(l_L102X3);
  sim_icache_fetch(1427 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 2568 */
} /* line 2568 */
  sim_icache_fetch(1428 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L103X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2570 */
  sim_icache_fetch(1429 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 14),0,2), 0); /* line 2572 */
} /* line 2572 */
  sim_icache_fetch(1430 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 7),0,1), reg_r0_2); /* line 2574 */
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -8); /* line 2575 */
} /* line 2575 */
  sim_icache_fetch(1432 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 12),0,2), 0); /* line 2577 */
} /* line 2577 */
  sim_icache_fetch(1433 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 6),0,1), reg_r0_5); /* line 2579 */
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) -8); /* line 2580 */
} /* line 2580 */
  sim_icache_fetch(1435 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 10),0,2), 0); /* line 2582 */
} /* line 2582 */
  sim_icache_fetch(1436 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 5),0,1), reg_r0_6); /* line 2584 */
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) -8); /* line 2585 */
} /* line 2585 */
  sim_icache_fetch(1438 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 8),0,2), 0); /* line 2587 */
} /* line 2587 */
  sim_icache_fetch(1439 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 4),0,1), reg_r0_7); /* line 2589 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) -8); /* line 2590 */
} /* line 2590 */
  sim_icache_fetch(1441 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 6),0,2), 0); /* line 2592 */
} /* line 2592 */
  sim_icache_fetch(1442 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 3),0,1), reg_r0_8); /* line 2594 */
   __ADD(reg_r0_8, reg_r0_8, (unsigned int) -8); /* line 2595 */
} /* line 2595 */
  sim_icache_fetch(1444 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 4),0,2), 0); /* line 2597 */
} /* line 2597 */
  sim_icache_fetch(1445 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 2),0,1), reg_r0_9); /* line 2599 */
   __ADD(reg_r0_9, reg_r0_9, (unsigned int) -8); /* line 2600 */
} /* line 2600 */
  sim_icache_fetch(1447 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 2),0,2), 0); /* line 2602 */
} /* line 2602 */
  sim_icache_fetch(1448 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 1),0,1), reg_r0_10); /* line 2604 */
   __ADD(reg_r0_10, reg_r0_10, (unsigned int) -8); /* line 2605 */
} /* line 2605 */
  sim_icache_fetch(1450 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STH(mem_trace_st(reg_r0_3,0,2), 0); /* line 2607 */
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) -16); /* line 2608 */
} /* line 2608 */
  sim_icache_fetch(1452 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_4,0,1), reg_r0_11); /* line 2610 */
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) -8); /* line 2611 */
} /* line 2611 */
  sim_icache_fetch(1454 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_11, reg_r0_11, (unsigned int) -8); /* line 2613 */
   __GOTO(l_L102X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L102X3;
} /* line 2614 */
l_L103X3: ;/* line 2617 */
__LABEL(l_L103X3);
  sim_icache_fetch(1456 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) block_compress,0,4)); /* line 2618 */
} /* line 2618 */
  sim_icache_fetch(1458 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_5, (unsigned int) 257); /* line 2620 */
} /* line 2620 */
  sim_icache_fetch(1460 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_0, reg_r0_4, 0); /* line 2622 */
} /* line 2622 */
  sim_icache_fetch(1461 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_5, reg_b0_0, reg_r0_5, (unsigned int) 256); /* line 2624 */
} /* line 2624 */
  sim_icache_fetch(1463 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) free_ent,0,4), reg_r0_5); /* line 2626 */
} /* line 2626 */
		 /* line 2627 */
  sim_icache_fetch(1465 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(compressgetcode);
   reg_l0_0 = (295 << 5);
   {
    typedef unsigned int t_FT ();
    t_FT *t_call = (t_FT*) compressgetcode;
    reg_r0_3 =     (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 2629 */
l_lr_160: ;/* line 2629 */
__LABEL(l_lr_160);
  sim_icache_fetch(1467 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_4, reg_r0_3); /* line 2631 */
   __MOV(reg_r0_2, reg_r0_3); /* line 2632 */
} /* line 2632 */
  sim_icache_fetch(1469 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_3, (unsigned int) -1); /* line 2634 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 2635 */
} /* line 2635 */
  sim_icache_fetch(1471 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L104X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2637 */
  sim_icache_fetch(1472 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, 0); /* line 2639 */
} /* line 2639 */
  sim_icache_fetch(1473 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(decompress);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 2642 */
l_L104X3: ;/* line 2645 */
__LABEL(l_L104X3);
  sim_icache_fetch(1474 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 20),0,4), reg_r0_57); /* line 2646 */
} /* line 2646 */
  sim_icache_fetch(1475 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 24),0,4), reg_r0_58); /* line 2648 */
} /* line 2648 */
  sim_icache_fetch(1476 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 28),0,4), reg_r0_59); /* line 2650 */
   __MOV(reg_r0_58, reg_r0_2); /* line 2651 */
} /* line 2651 */
  sim_icache_fetch(1478 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2653 */
} /* line 2653 */
  sim_icache_fetch(1480 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_57, ((unsigned int) htab + (unsigned int) 4096)); /* line 2655 */
} /* line 2655 */
  sim_icache_fetch(1482 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_5, reg_r0_2, (unsigned int) 1); /* line 2657 */
   __MOV(reg_r0_59, reg_r0_4); /* line 2658 */
} /* line 2658 */
  sim_icache_fetch(1484 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_5); /* line 2660 */
} /* line 2660 */
  sim_icache_fetch(1486 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_3); /* line 2662 */
} /* line 2662 */
l_L105X3: ;/* line 2665 */
__LABEL(l_L105X3);
		 /* line 2665 */
  sim_icache_fetch(1487 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(compressgetcode);
   reg_l0_0 = (295 << 5);
   {
    typedef unsigned int t_FT ();
    t_FT *t_call = (t_FT*) compressgetcode;
    reg_r0_3 =     (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 2667 */
l_lr_164: ;/* line 2667 */
__LABEL(l_lr_164);
  sim_icache_fetch(1489 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_4, reg_r0_3); /* line 2669 */
   __CMPGT(reg_b0_0, reg_r0_3, (unsigned int) -1); /* line 2670 */
} /* line 2670 */
  sim_icache_fetch(1491 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, (unsigned int) 255); /* line 2672 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L106X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2673 */
  sim_icache_fetch(1493 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((unsigned int) block_compress,0,4)); /* line 2675 */
} /* line 2675 */
  sim_icache_fetch(1495 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_r0_3, reg_r0_3, (unsigned int) 256); /* line 2677 */
} /* line 2677 */
  sim_icache_fetch(1497 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ANDL(reg_b0_0, reg_r0_3, reg_r0_6); /* line 2679 */
} /* line 2679 */
  sim_icache_fetch(1498 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L107X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2681 */
  sim_icache_fetch(1499 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, ((unsigned int) codetab + (unsigned int) 496)); /* line 2683 */
} /* line 2683 */
l_L108X3: ;/* line 2686 */
__LABEL(l_L108X3);
  sim_icache_fetch(1501 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 2687 */
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -8); /* line 2688 */
} /* line 2688 */
  sim_icache_fetch(1503 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L109X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2690 */
  sim_icache_fetch(1504 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 14),0,2), 0); /* line 2692 */
} /* line 2692 */
  sim_icache_fetch(1505 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 12),0,2), 0); /* line 2694 */
} /* line 2694 */
  sim_icache_fetch(1506 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 10),0,2), 0); /* line 2696 */
} /* line 2696 */
  sim_icache_fetch(1507 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 8),0,2), 0); /* line 2698 */
} /* line 2698 */
  sim_icache_fetch(1508 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 6),0,2), 0); /* line 2700 */
} /* line 2700 */
  sim_icache_fetch(1509 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 4),0,2), 0); /* line 2702 */
} /* line 2702 */
  sim_icache_fetch(1510 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STH(mem_trace_st((reg_r0_3 + (unsigned int) 2),0,2), 0); /* line 2704 */
} /* line 2704 */
  sim_icache_fetch(1511 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STH(mem_trace_st(reg_r0_3,0,2), 0); /* line 2706 */
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) -16); /* line 2708 */
} /* line 2708 */
  sim_icache_fetch(1513 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L108X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L108X3;
} /* line 2710 */
l_L109X3: ;/* line 2713 */
__LABEL(l_L109X3);
  sim_icache_fetch(1514 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_2, (unsigned int) 1); /* line 2714 */
} /* line 2714 */
  sim_icache_fetch(1515 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 256); /* line 2716 */
} /* line 2716 */
  sim_icache_fetch(1517 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) clear_flg,0,4), reg_r0_2); /* line 2718 */
} /* line 2718 */
  sim_icache_fetch(1519 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) free_ent,0,4), reg_r0_3); /* line 2720 */
} /* line 2720 */
		 /* line 2721 */
  sim_icache_fetch(1521 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(compressgetcode);
   reg_l0_0 = (295 << 5);
   {
    typedef unsigned int t_FT ();
    t_FT *t_call = (t_FT*) compressgetcode;
    reg_r0_3 =     (*t_call)();
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 2723 */
l_lr_168: ;/* line 2723 */
__LABEL(l_lr_168);
  sim_icache_fetch(1523 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_4, reg_r0_3); /* line 2725 */
   __CMPEQ(reg_b0_0, reg_r0_3, (unsigned int) -1); /* line 2726 */
} /* line 2726 */
  sim_icache_fetch(1525 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L106X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2728 */
l_L107X3: ;/* line 2731 */
__LABEL(l_L107X3);
  sim_icache_fetch(1526 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_6, reg_r0_4); /* line 2732 */
   __MOV(reg_r0_2, reg_r0_4); /* line 2733 */
} /* line 2733 */
  sim_icache_fetch(1528 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) free_ent,0,4)); /* line 2735 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2736 */
   __ADD_CYCLES(1);
} /* line 2736 */
  sim_icache_fetch(1531 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_4, reg_r0_3); /* line 2738 */
} /* line 2738 */
  sim_icache_fetch(1532 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L110X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2740 */
l_L111X3: ;/* line 2742 */
__LABEL(l_L111X3);
  sim_icache_fetch(1533 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) 256); /* line 2743 */
} /* line 2743 */
  sim_icache_fetch(1535 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_5, reg_r0_57); /* line 2745 */
} /* line 2745 */
l_L112X3: ;/* line 2748 */
__LABEL(l_L112X3);
  sim_icache_fetch(1536 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBUs(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2749 */
} /* line 2749 */
  sim_icache_fetch(1538 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2751 */
} /* line 2751 */
  sim_icache_fetch(1539 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L113X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2753 */
  sim_icache_fetch(1540 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2755 */
} /* line 2755 */
  sim_icache_fetch(1542 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st(reg_r0_5,0,1), reg_r0_3); /* line 2757 */
} /* line 2757 */
  sim_icache_fetch(1543 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2759 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2760 */
   __ADD_CYCLES(1);
} /* line 2760 */
  sim_icache_fetch(1545 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2762 */
} /* line 2762 */
  sim_icache_fetch(1546 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L114X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2764 */
  sim_icache_fetch(1547 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2766 */
} /* line 2766 */
  sim_icache_fetch(1549 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2768 */
} /* line 2768 */
  sim_icache_fetch(1551 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_5 + (unsigned int) 1),0,1), reg_r0_3); /* line 2770 */
} /* line 2770 */
  sim_icache_fetch(1552 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2772 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2773 */
   __ADD_CYCLES(1);
} /* line 2773 */
  sim_icache_fetch(1554 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2775 */
} /* line 2775 */
  sim_icache_fetch(1555 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L115X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2777 */
  sim_icache_fetch(1556 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2779 */
} /* line 2779 */
  sim_icache_fetch(1558 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2781 */
} /* line 2781 */
  sim_icache_fetch(1560 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_5 + (unsigned int) 2),0,1), reg_r0_3); /* line 2783 */
} /* line 2783 */
  sim_icache_fetch(1561 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2785 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2786 */
   __ADD_CYCLES(1);
} /* line 2786 */
  sim_icache_fetch(1563 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2788 */
} /* line 2788 */
  sim_icache_fetch(1564 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L116X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2790 */
  sim_icache_fetch(1565 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2792 */
} /* line 2792 */
  sim_icache_fetch(1567 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2794 */
} /* line 2794 */
  sim_icache_fetch(1569 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_5 + (unsigned int) 3),0,1), reg_r0_3); /* line 2796 */
} /* line 2796 */
  sim_icache_fetch(1570 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2798 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2799 */
   __ADD_CYCLES(1);
} /* line 2799 */
  sim_icache_fetch(1572 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2801 */
} /* line 2801 */
  sim_icache_fetch(1573 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L117X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2803 */
  sim_icache_fetch(1574 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2805 */
} /* line 2805 */
  sim_icache_fetch(1576 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2807 */
} /* line 2807 */
  sim_icache_fetch(1578 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_5 + (unsigned int) 4),0,1), reg_r0_3); /* line 2809 */
} /* line 2809 */
  sim_icache_fetch(1579 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2811 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2812 */
   __ADD_CYCLES(1);
} /* line 2812 */
  sim_icache_fetch(1581 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2814 */
} /* line 2814 */
  sim_icache_fetch(1582 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L118X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2816 */
  sim_icache_fetch(1583 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2818 */
} /* line 2818 */
  sim_icache_fetch(1585 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2820 */
} /* line 2820 */
  sim_icache_fetch(1587 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_5 + (unsigned int) 5),0,1), reg_r0_3); /* line 2822 */
} /* line 2822 */
  sim_icache_fetch(1588 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2824 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2825 */
   __ADD_CYCLES(1);
} /* line 2825 */
  sim_icache_fetch(1590 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2827 */
} /* line 2827 */
  sim_icache_fetch(1591 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L119X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2829 */
  sim_icache_fetch(1592 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2831 */
} /* line 2831 */
  sim_icache_fetch(1594 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2833 */
} /* line 2833 */
  sim_icache_fetch(1596 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_5 + (unsigned int) 6),0,1), reg_r0_3); /* line 2835 */
} /* line 2835 */
  sim_icache_fetch(1597 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2837 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 2838 */
   __ADD_CYCLES(1);
} /* line 2838 */
  sim_icache_fetch(1599 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, reg_r0_4); /* line 2840 */
} /* line 2840 */
  sim_icache_fetch(1600 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L120X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2842 */
  sim_icache_fetch(1601 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_3, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 2844 */
} /* line 2844 */
  sim_icache_fetch(1603 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_2, (unsigned int) codetab); /* line 2846 */
} /* line 2846 */
  sim_icache_fetch(1605 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st((reg_r0_5 + (unsigned int) 7),0,1), reg_r0_3); /* line 2848 */
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 8); /* line 2849 */
} /* line 2849 */
  sim_icache_fetch(1607 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDHU(reg_r0_2, mem_trace_ld(reg_r0_2,0,2)); /* line 2851 */
} /* line 2851 */
  sim_icache_fetch(1608 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L112X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L112X3;
} /* line 2853 */
l_L120X3: ;/* line 2856 */
__LABEL(l_L120X3);
  sim_icache_fetch(1609 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 7); /* line 2859 */
} /* line 2859 */
  sim_icache_fetch(1610 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L121X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L121X3;
} /* line 2861 */
l_L122X3: ;/* line 2864 */
__LABEL(l_L122X3);
  sim_icache_fetch(1611 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2865 */
} /* line 2865 */
  sim_icache_fetch(1613 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_12, reg_r0_3); /* line 2867 */
   __LDBU(reg_r0_11, mem_trace_ld(reg_r0_3,0,1)); /* line 2868 */
} /* line 2868 */
  sim_icache_fetch(1615 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_2, (unsigned int) 1); /* line 2870 */
   __MOV(reg_r0_14, reg_r0_9); /* line 2871 */
} /* line 2871 */
  sim_icache_fetch(1617 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLEU(reg_b0_0, reg_r0_3, ((unsigned int) htab + (unsigned int) 4096)); /* line 2873 */
} /* line 2873 */
  sim_icache_fetch(1619 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLEU(reg_b0_1, reg_r0_4, ((unsigned int) htab + (unsigned int) 4096)); /* line 2875 */
} /* line 2875 */
  sim_icache_fetch(1621 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLEU(reg_b0_2, reg_r0_5, ((unsigned int) htab + (unsigned int) 4096)); /* line 2877 */
} /* line 2877 */
  sim_icache_fetch(1623 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLEU(reg_b0_3, reg_r0_6, ((unsigned int) htab + (unsigned int) 4096)); /* line 2879 */
} /* line 2879 */
  sim_icache_fetch(1625 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLEU(reg_b0_4, reg_r0_7, ((unsigned int) htab + (unsigned int) 4096)); /* line 2881 */
} /* line 2881 */
  sim_icache_fetch(1627 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLEU(reg_b0_5, reg_r0_8, ((unsigned int) htab + (unsigned int) 4096)); /* line 2883 */
} /* line 2883 */
  sim_icache_fetch(1629 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) -7); /* line 2885 */
} /* line 2885 */
  sim_icache_fetch(1630 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLEU(reg_b0_6, reg_r0_14, ((unsigned int) htab + (unsigned int) 4096)); /* line 2887 */
} /* line 2887 */
  sim_icache_fetch(1632 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2889 */
} /* line 2889 */
  sim_icache_fetch(1634 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_11); /* line 2891 */
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L123X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2892 */
  sim_icache_fetch(1636 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2894 */
} /* line 2894 */
  sim_icache_fetch(1638 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBU(reg_r0_11, mem_trace_ld(reg_r0_4,0,1)); /* line 2896 */
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) -7); /* line 2897 */
} /* line 2897 */
  sim_icache_fetch(1640 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_13, reg_r0_2, (unsigned int) 1); /* line 2899 */
} /* line 2899 */
  sim_icache_fetch(1641 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2901 */
} /* line 2901 */
  sim_icache_fetch(1643 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_11); /* line 2903 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L124X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2904 */
  sim_icache_fetch(1645 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2906 */
} /* line 2906 */
  sim_icache_fetch(1647 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBU(reg_r0_11, mem_trace_ld(reg_r0_5,0,1)); /* line 2908 */
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) -7); /* line 2909 */
} /* line 2909 */
  sim_icache_fetch(1649 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_13, reg_r0_2, (unsigned int) 1); /* line 2911 */
} /* line 2911 */
  sim_icache_fetch(1650 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2913 */
} /* line 2913 */
  sim_icache_fetch(1652 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_11); /* line 2915 */
   if (reg_b0_2) {    __BRANCH(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L125X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2916 */
  sim_icache_fetch(1654 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2918 */
} /* line 2918 */
  sim_icache_fetch(1656 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBU(reg_r0_11, mem_trace_ld(reg_r0_6,0,1)); /* line 2920 */
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) -7); /* line 2921 */
} /* line 2921 */
  sim_icache_fetch(1658 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_13, reg_r0_2, (unsigned int) 1); /* line 2923 */
} /* line 2923 */
  sim_icache_fetch(1659 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2925 */
} /* line 2925 */
  sim_icache_fetch(1661 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_11); /* line 2927 */
   if (reg_b0_3) {    __BRANCH(reg_b0_3);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L126X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2928 */
  sim_icache_fetch(1663 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2930 */
} /* line 2930 */
  sim_icache_fetch(1665 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBU(reg_r0_11, mem_trace_ld(reg_r0_7,0,1)); /* line 2932 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) -7); /* line 2933 */
} /* line 2933 */
  sim_icache_fetch(1667 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_13, reg_r0_2, (unsigned int) 1); /* line 2935 */
} /* line 2935 */
  sim_icache_fetch(1668 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2937 */
} /* line 2937 */
  sim_icache_fetch(1670 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_11); /* line 2939 */
   if (reg_b0_4) {    __BRANCH(reg_b0_4);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L127X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2940 */
  sim_icache_fetch(1672 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2942 */
} /* line 2942 */
  sim_icache_fetch(1674 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBU(reg_r0_11, mem_trace_ld(reg_r0_8,0,1)); /* line 2944 */
   __ADD(reg_r0_8, reg_r0_8, (unsigned int) -7); /* line 2945 */
} /* line 2945 */
  sim_icache_fetch(1676 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_13, reg_r0_2, (unsigned int) 1); /* line 2947 */
} /* line 2947 */
  sim_icache_fetch(1677 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2949 */
} /* line 2949 */
  sim_icache_fetch(1679 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_11); /* line 2951 */
   if (reg_b0_5) {    __BRANCH(reg_b0_5);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L128X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2952 */
  sim_icache_fetch(1681 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) outbuf,0,4)); /* line 2954 */
} /* line 2954 */
  sim_icache_fetch(1683 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDBU(reg_r0_11, mem_trace_ld(reg_r0_9,0,1)); /* line 2956 */
   __ADD(reg_r0_10, reg_r0_10, (unsigned int) -7); /* line 2957 */
} /* line 2957 */
  sim_icache_fetch(1685 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_13, reg_r0_2, (unsigned int) 1); /* line 2959 */
   __ADD(reg_r0_9, reg_r0_9, (unsigned int) -7); /* line 2960 */
} /* line 2960 */
  sim_icache_fetch(1687 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) outbuf,0,4), reg_r0_13); /* line 2962 */
} /* line 2962 */
  sim_icache_fetch(1689 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_2,0,1), reg_r0_11); /* line 2964 */
   if (reg_b0_6) {    __BRANCH(reg_b0_6);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L129X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 2966 */
  sim_icache_fetch(1691 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L122X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L122X3;
} /* line 2968 */
l_L129X3: ;/* line 2971 */
__LABEL(l_L129X3);
  sim_icache_fetch(1692 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_12, (unsigned int) -6); /* line 2972 */
   __MOV(reg_r0_58, reg_r0_16); /* line 2974 */
} /* line 2974 */
  sim_icache_fetch(1694 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L130X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L130X3;
} /* line 2976 */
l_L132X3: ;/* line 2979 */
__LABEL(l_L132X3);
  sim_icache_fetch(1695 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH1ADD(reg_r0_2, reg_r0_3, (unsigned int) codetab); /* line 2980 */
} /* line 2980 */
  sim_icache_fetch(1697 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_3, (unsigned int) 1); /* line 2982 */
   __STH(mem_trace_st(reg_r0_2,0,2), reg_r0_59); /* line 2983 */
} /* line 2983 */
  sim_icache_fetch(1699 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) free_ent,0,4), reg_r0_4); /* line 2985 */
} /* line 2985 */
  sim_icache_fetch(1701 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STB(mem_trace_st((reg_r0_3 + (unsigned int) htab),0,1), reg_r0_58); /* line 2988 */
} /* line 2988 */
  sim_icache_fetch(1703 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L131X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L131X3;
} /* line 2990 */
l_L128X3: ;/* line 2993 */
__LABEL(l_L128X3);
  sim_icache_fetch(1704 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_10, (unsigned int) -6); /* line 2994 */
   __MOV(reg_r0_58, reg_r0_16); /* line 2996 */
} /* line 2996 */
  sim_icache_fetch(1706 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L130X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L130X3;
} /* line 2998 */
l_L127X3: ;/* line 3001 */
__LABEL(l_L127X3);
  sim_icache_fetch(1707 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_10, (unsigned int) -5); /* line 3002 */
   __MOV(reg_r0_58, reg_r0_16); /* line 3004 */
} /* line 3004 */
  sim_icache_fetch(1709 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L130X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L130X3;
} /* line 3006 */
l_L126X3: ;/* line 3009 */
__LABEL(l_L126X3);
  sim_icache_fetch(1710 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_10, (unsigned int) -4); /* line 3010 */
   __MOV(reg_r0_58, reg_r0_16); /* line 3012 */
} /* line 3012 */
  sim_icache_fetch(1712 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L130X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L130X3;
} /* line 3014 */
l_L125X3: ;/* line 3017 */
__LABEL(l_L125X3);
  sim_icache_fetch(1713 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_10, (unsigned int) -3); /* line 3018 */
   __MOV(reg_r0_58, reg_r0_16); /* line 3020 */
} /* line 3020 */
  sim_icache_fetch(1715 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L130X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L130X3;
} /* line 3022 */
l_L124X3: ;/* line 3025 */
__LABEL(l_L124X3);
  sim_icache_fetch(1716 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_10, (unsigned int) -2); /* line 3026 */
   __MOV(reg_r0_58, reg_r0_16); /* line 3028 */
} /* line 3028 */
  sim_icache_fetch(1718 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L130X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L130X3;
} /* line 3030 */
l_L123X3: ;/* line 3033 */
__LABEL(l_L123X3);
  sim_icache_fetch(1719 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_10, (unsigned int) -1); /* line 3034 */
   __MOV(reg_r0_58, reg_r0_16); /* line 3035 */
} /* line 3035 */
l_L130X3: ;/* line 3037 */
__LABEL(l_L130X3);
  sim_icache_fetch(1721 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) free_ent,0,4)); /* line 3038 */
} /* line 3038 */
  sim_icache_fetch(1723 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) maxmaxcode,0,4)); /* line 3040 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 3041 */
   __ADD_CYCLES(1);
} /* line 3041 */
  sim_icache_fetch(1726 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_0, reg_r0_3, reg_r0_4); /* line 3043 */
} /* line 3043 */
  sim_icache_fetch(1727 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L132X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3045 */
l_L131X3: ;/* line 3047 */
__LABEL(l_L131X3);
  sim_icache_fetch(1728 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_59, reg_r0_15); /* line 3048 */
   __GOTO(l_L105X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L105X3;
} /* line 3049 */
l_L119X3: ;/* line 3052 */
__LABEL(l_L119X3);
  sim_icache_fetch(1730 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 6); /* line 3055 */
} /* line 3055 */
  sim_icache_fetch(1731 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L121X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L121X3;
} /* line 3057 */
l_L118X3: ;/* line 3060 */
__LABEL(l_L118X3);
  sim_icache_fetch(1732 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 5); /* line 3063 */
} /* line 3063 */
  sim_icache_fetch(1733 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L121X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L121X3;
} /* line 3065 */
l_L117X3: ;/* line 3068 */
__LABEL(l_L117X3);
  sim_icache_fetch(1734 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 4); /* line 3071 */
} /* line 3071 */
  sim_icache_fetch(1735 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L121X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L121X3;
} /* line 3073 */
l_L116X3: ;/* line 3076 */
__LABEL(l_L116X3);
  sim_icache_fetch(1736 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 3); /* line 3079 */
} /* line 3079 */
  sim_icache_fetch(1737 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L121X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L121X3;
} /* line 3081 */
l_L115X3: ;/* line 3084 */
__LABEL(l_L115X3);
  sim_icache_fetch(1738 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 2); /* line 3087 */
} /* line 3087 */
  sim_icache_fetch(1739 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L121X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L121X3;
} /* line 3089 */
l_L114X3: ;/* line 3092 */
__LABEL(l_L114X3);
  sim_icache_fetch(1740 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 1); /* line 3095 */
} /* line 3095 */
  sim_icache_fetch(1741 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L121X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L121X3;
} /* line 3097 */
l_L113X3: ;/* line 3102 */
__LABEL(l_L113X3);
  sim_icache_fetch(1742 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 3102 */
l_L121X3: ;/* line 3104 */
__LABEL(l_L121X3);
  sim_icache_fetch(1743 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_2, mem_trace_ld((reg_r0_2 + (unsigned int) htab),0,1)); /* line 3105 */
} /* line 3105 */
  sim_icache_fetch(1745 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_9, reg_r0_5, (unsigned int) -6); /* line 3107 */
   __ADD(reg_r0_8, reg_r0_5, (unsigned int) -5); /* line 3108 */
} /* line 3108 */
  sim_icache_fetch(1747 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_7, reg_r0_5, (unsigned int) -4); /* line 3110 */
   __ADD(reg_r0_11, reg_r0_5, (unsigned int) -2); /* line 3111 */
} /* line 3111 */
  sim_icache_fetch(1749 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_4, reg_r0_5, (unsigned int) -1); /* line 3113 */
   __MOV(reg_r0_15, reg_r0_6); /* line 3114 */
} /* line 3114 */
  sim_icache_fetch(1751 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_5, (unsigned int) -3); /* line 3116 */
   __ADD(reg_r0_10, reg_r0_5, (unsigned int) 1); /* line 3117 */
} /* line 3117 */
  sim_icache_fetch(1753 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_5,0,1), reg_r0_2); /* line 3119 */
   __MOV(reg_r0_3, reg_r0_5); /* line 3120 */
} /* line 3120 */
  sim_icache_fetch(1755 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_16, reg_r0_2); /* line 3122 */
   __MOV(reg_r0_5, reg_r0_11); /* line 3124 */
} /* line 3124 */
  sim_icache_fetch(1757 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L122X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L122X3;
} /* line 3126 */
l_L110X3: ;/* line 3129 */
__LABEL(l_L110X3);
  sim_icache_fetch(1758 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STB(mem_trace_st(reg_r0_57,0,1), reg_r0_58); /* line 3130 */
   __MOV(reg_r0_2, reg_r0_59); /* line 3131 */
} /* line 3131 */
  sim_icache_fetch(1760 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_57, reg_r0_57, (unsigned int) 1); /* line 3133 */
   __GOTO(l_L111X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L111X3;
} /* line 3134 */
l_L106X3: ;/* line 3137 */
__LABEL(l_L106X3);
  sim_icache_fetch(1762 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, 0); /* line 3138 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 3139 */
} /* line 3139 */
  sim_icache_fetch(1764 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_59, mem_trace_ld((reg_r0_1 + (unsigned int) 28),0,4)); /* line 3141 */
} /* line 3141 */
  sim_icache_fetch(1765 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_58, mem_trace_ld((reg_r0_1 + (unsigned int) 24),0,4)); /* line 3143 */
} /* line 3143 */
  sim_icache_fetch(1766 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_57, mem_trace_ld((reg_r0_1 + (unsigned int) 20),0,4)); /* line 3145 */
} /* line 3145 */
  sim_icache_fetch(1767 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(decompress);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3148 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 258: goto l_L102X3;
    case 259: goto l_L103X3;
    case 261: goto l_lr_160;
    case 262: goto l_L104X3;
    case 263: goto l_L105X3;
    case 265: goto l_lr_164;
    case 266: goto l_L108X3;
    case 267: goto l_L109X3;
    case 269: goto l_lr_168;
    case 270: goto l_L107X3;
    case 271: goto l_L111X3;
    case 272: goto l_L112X3;
    case 273: goto l_L120X3;
    case 274: goto l_L122X3;
    case 275: goto l_L129X3;
    case 276: goto l_L132X3;
    case 277: goto l_L128X3;
    case 278: goto l_L127X3;
    case 279: goto l_L126X3;
    case 280: goto l_L125X3;
    case 281: goto l_L124X3;
    case 282: goto l_L123X3;
    case 283: goto l_L130X3;
    case 284: goto l_L131X3;
    case 285: goto l_L119X3;
    case 286: goto l_L118X3;
    case 287: goto l_L117X3;
    case 288: goto l_L116X3;
    case 289: goto l_L115X3;
    case 290: goto l_L114X3;
    case 291: goto l_L113X3;
    case 292: goto l_L121X3;
    case 293: goto l_L110X3;
    case 294: goto l_L106X3;
    case 295:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int compressgetcode(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(compressgetcode);  sim_gprof_enter(&sim_gprof_idx,"compressgetcode");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (317 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(1768 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 3166 */
  sim_icache_fetch(1769 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) maxbits,0,4)); /* line 3168 */
} /* line 3168 */
  sim_icache_fetch(1771 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) maxmaxcode,0,4)); /* line 3170 */
} /* line 3170 */
  sim_icache_fetch(1773 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) clear_flg,0,4)); /* line 3172 */
} /* line 3172 */
  sim_icache_fetch(1775 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) free_ent,0,4)); /* line 3174 */
} /* line 3174 */
  sim_icache_fetch(1777 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGT(reg_r0_4, reg_r0_4, 0); /* line 3176 */
} /* line 3176 */
  sim_icache_fetch(1778 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((unsigned int) maxcode,0,4)); /* line 3178 */
} /* line 3178 */
  sim_icache_fetch(1780 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_7, mem_trace_ld((unsigned int) _X1PACKETX13,0,4)); /* line 3180 */
} /* line 3180 */
  sim_icache_fetch(1782 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_r0_8, reg_r0_5, reg_r0_6); /* line 3182 */
   __CMPGT(reg_b0_0, reg_r0_5, reg_r0_6); /* line 3183 */
} /* line 3183 */
  sim_icache_fetch(1784 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ORL(reg_r0_4, reg_r0_4, reg_r0_8); /* line 3185 */
} /* line 3185 */
  sim_icache_fetch(1785 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) _X1PACKETX14,0,4)); /* line 3187 */
} /* line 3187 */
  sim_icache_fetch(1787 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 3189 */
} /* line 3189 */
  sim_icache_fetch(1789 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_r0_8, reg_r0_7, reg_r0_5); /* line 3191 */
} /* line 3191 */
  sim_icache_fetch(1790 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ORL(reg_b0_1, reg_r0_4, reg_r0_8); /* line 3193 */
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) 1); /* line 3194 */
} /* line 3194 */
  sim_icache_fetch(1792 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_1 ;
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_1, reg_r0_6, reg_r0_2); /* line 3196 */
   if (!t__i32_0) {    __BRANCHF(t__i32_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L133X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3197 */
  sim_icache_fetch(1794 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L134X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3199 */
  sim_icache_fetch(1795 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) n_bits,0,4), reg_r0_6); /* line 3201 */
} /* line 3201 */
  sim_icache_fetch(1797 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_1) {    __BRANCHF(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L135X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3203 */
  sim_icache_fetch(1798 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_3); /* line 3205 */
} /* line 3205 */
l_L134X3: ;/* line 3208 */
__LABEL(l_L134X3);
  sim_icache_fetch(1800 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) clear_flg,0,4)); /* line 3209 */
} /* line 3209 */
  sim_icache_fetch(1802 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 3211 */
} /* line 3211 */
  sim_icache_fetch(1804 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_0, reg_r0_2, 0); /* line 3213 */
   __MOV(reg_r0_5, 0); /* line 3214 */
} /* line 3214 */
  sim_icache_fetch(1806 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_2, (unsigned int) 3, reg_r0_6); /* line 3216 */
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L136X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3217 */
l_L137X3: ;/* line 3219 */
__LABEL(l_L137X3);
  sim_icache_fetch(1808 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_2); /* line 3220 */
   __MOV(reg_r0_8, reg_r0_7); /* line 3221 */
} /* line 3221 */
  sim_icache_fetch(1810 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) _X1PACKETX15); /* line 3223 */
} /* line 3223 */
  sim_icache_fetch(1812 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_9, reg_r0_6); /* line 3225 */
} /* line 3225 */
l_L138X3: ;/* line 3228 */
__LABEL(l_L138X3);
  sim_icache_fetch(1813 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_2, mem_trace_ld((unsigned int) buflen,0,4)); /* line 3229 */
} /* line 3229 */
  sim_icache_fetch(1815 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_3, (unsigned int) 3); /* line 3231 */
   __CMPLT(reg_b0_1, reg_r0_3, (unsigned int) 2); /* line 3232 */
} /* line 3232 */
  sim_icache_fetch(1817 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -1); /* line 3234 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L139X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3235 */
  sim_icache_fetch(1819 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 3237 */
   __CMPLT(reg_b0_2, reg_r0_3, (unsigned int) 1); /* line 3238 */
} /* line 3238 */
  sim_icache_fetch(1821 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) bufp,0,4)); /* line 3240 */
} /* line 3240 */
  sim_icache_fetch(1823 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLT(reg_b0_3, reg_r0_3, 0); /* line 3242 */
} /* line 3242 */
  sim_icache_fetch(1824 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_7, reg_r0_6, (unsigned int) 1); /* line 3244 */
} /* line 3244 */
  sim_icache_fetch(1825 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_2); /* line 3246 */
} /* line 3246 */
  sim_icache_fetch(1827 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L140X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3248 */
  sim_icache_fetch(1828 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_2, mem_trace_ld((unsigned int) buflen,0,4)); /* line 3250 */
} /* line 3250 */
  sim_icache_fetch(1830 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_7); /* line 3252 */
} /* line 3252 */
  sim_icache_fetch(1832 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_6, mem_trace_ld(reg_r0_6,0,1)); /* line 3254 */
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -1); /* line 3255 */
} /* line 3255 */
  sim_icache_fetch(1834 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 3257 */
} /* line 3257 */
  sim_icache_fetch(1835 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_6, reg_r0_6); /* line 3259 */
} /* line 3259 */
l_L141X3: ;/* line 3261 */
__LABEL(l_L141X3);
  sim_icache_fetch(1836 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ZXTB(reg_r0_7, reg_r0_6); /* line 3262 */
   __STB(mem_trace_st(reg_r0_4,0,1), reg_r0_6); /* line 3263 */
} /* line 3263 */
  sim_icache_fetch(1838 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_4, reg_r0_7, (unsigned int) 255); /* line 3265 */
} /* line 3265 */
  sim_icache_fetch(1839 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_4) {    __BRANCH(reg_b0_4);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L142X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3267 */
  sim_icache_fetch(1840 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_1) {    __BRANCHF(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L139X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3269 */
  sim_icache_fetch(1841 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) bufp,0,4)); /* line 3271 */
} /* line 3271 */
  sim_icache_fetch(1843 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_2); /* line 3273 */
} /* line 3273 */
  sim_icache_fetch(1845 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_6, (unsigned int) 1); /* line 3275 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L143X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3276 */
  sim_icache_fetch(1847 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_7, mem_trace_ld((unsigned int) buflen,0,4)); /* line 3278 */
} /* line 3278 */
  sim_icache_fetch(1849 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_2); /* line 3280 */
} /* line 3280 */
  sim_icache_fetch(1851 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_6, mem_trace_ld(reg_r0_6,0,1)); /* line 3282 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) -1); /* line 3283 */
} /* line 3283 */
  sim_icache_fetch(1853 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_7, 0); /* line 3285 */
} /* line 3285 */
  sim_icache_fetch(1854 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_6, reg_r0_6); /* line 3287 */
} /* line 3287 */
l_L144X3: ;/* line 3289 */
__LABEL(l_L144X3);
  sim_icache_fetch(1855 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ZXTB(reg_r0_2, reg_r0_6); /* line 3290 */
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 1),0,1), reg_r0_6); /* line 3291 */
} /* line 3291 */
  sim_icache_fetch(1857 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_1, reg_r0_2, (unsigned int) 255); /* line 3293 */
} /* line 3293 */
  sim_icache_fetch(1858 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L145X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3295 */
  sim_icache_fetch(1859 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L139X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3297 */
  sim_icache_fetch(1860 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_2, mem_trace_ld((unsigned int) bufp,0,4)); /* line 3299 */
} /* line 3299 */
  sim_icache_fetch(1862 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_7); /* line 3301 */
} /* line 3301 */
  sim_icache_fetch(1864 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 3303 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L146X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3304 */
  sim_icache_fetch(1866 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_7, mem_trace_ld((unsigned int) buflen,0,4)); /* line 3306 */
} /* line 3306 */
  sim_icache_fetch(1868 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_6); /* line 3308 */
} /* line 3308 */
  sim_icache_fetch(1870 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDB(reg_r0_2, mem_trace_ld(reg_r0_2,0,1)); /* line 3310 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) -1); /* line 3311 */
} /* line 3311 */
  sim_icache_fetch(1872 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGE(reg_b0_0, reg_r0_7, 0); /* line 3313 */
} /* line 3313 */
  sim_icache_fetch(1873 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_2, reg_r0_2); /* line 3315 */
} /* line 3315 */
l_L147X3: ;/* line 3317 */
__LABEL(l_L147X3);
  sim_icache_fetch(1874 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ZXTB(reg_r0_6, reg_r0_2); /* line 3318 */
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 2),0,1), reg_r0_2); /* line 3319 */
} /* line 3319 */
  sim_icache_fetch(1876 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_1, reg_r0_6, (unsigned int) 255); /* line 3321 */
} /* line 3321 */
  sim_icache_fetch(1877 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L148X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3323 */
  sim_icache_fetch(1878 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_3) {    __BRANCHF(reg_b0_3);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L139X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3325 */
  sim_icache_fetch(1879 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_2, mem_trace_ld((unsigned int) bufp,0,4)); /* line 3327 */
} /* line 3327 */
  sim_icache_fetch(1881 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) buflen,0,4), reg_r0_7); /* line 3329 */
} /* line 3329 */
  sim_icache_fetch(1883 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_2, (unsigned int) 1); /* line 3331 */
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L149X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3332 */
  sim_icache_fetch(1885 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) 4); /* line 3334 */
} /* line 3334 */
  sim_icache_fetch(1886 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) bufp,0,4), reg_r0_6); /* line 3336 */
} /* line 3336 */
  sim_icache_fetch(1888 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDB(reg_r0_2, mem_trace_ld(reg_r0_2,0,1)); /* line 3338 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 3339 */
   __ADD_CYCLES(1);
} /* line 3339 */
  sim_icache_fetch(1890 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ZXTB(reg_r0_2, reg_r0_2); /* line 3341 */
} /* line 3341 */
l_L150X3: ;/* line 3343 */
__LABEL(l_L150X3);
  sim_icache_fetch(1891 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ZXTB(reg_r0_6, reg_r0_2); /* line 3344 */
   __STB(mem_trace_st((reg_r0_4 + (unsigned int) 3),0,1), reg_r0_2); /* line 3345 */
} /* line 3345 */
  sim_icache_fetch(1893 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPEQ(reg_b0_0, reg_r0_6, (unsigned int) 255); /* line 3347 */
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) 4); /* line 3348 */
} /* line 3348 */
  sim_icache_fetch(1895 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L151X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3350 */
  sim_icache_fetch(1896 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_5, reg_r0_5, (unsigned int) 4); /* line 3352 */
   __GOTO(l_L138X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L138X3;
} /* line 3353 */
l_L151X3: ;/* line 3356 */
__LABEL(l_L151X3);
  sim_icache_fetch(1898 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_9, reg_r0_5, (unsigned int) 3); /* line 3357 */
   __MOV(reg_r0_3, (unsigned int) -1); /* line 3359 */
} /* line 3359 */
  sim_icache_fetch(1900 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L152X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L152X3;
} /* line 3361 */
l_L153X3: ;/* line 3364 */
__LABEL(l_L153X3);
  sim_icache_fetch(1901 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 3365 */
} /* line 3365 */
  sim_icache_fetch(1903 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_7, 0); /* line 3367 */
   __SHL(reg_r0_9, reg_r0_9, (unsigned int) 3); /* line 3368 */
} /* line 3368 */
  sim_icache_fetch(1905 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_9, reg_r0_9, (unsigned int) 1); /* line 3370 */
} /* line 3370 */
  sim_icache_fetch(1906 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SUB(reg_r0_5, reg_r0_9, reg_r0_2); /* line 3372 */
} /* line 3372 */
l_L133X3: ;/* line 3375 */
__LABEL(l_L133X3);
  sim_icache_fetch(1907 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 3376 */
} /* line 3376 */
  sim_icache_fetch(1909 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHR(reg_r0_6, reg_r0_7, (unsigned int) 3); /* line 3378 */
   __AND(reg_r0_4, reg_r0_7, (unsigned int) 7); /* line 3379 */
} /* line 3379 */
  sim_icache_fetch(1911 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_8, reg_r0_2, reg_r0_4); /* line 3381 */
   __SUB(reg_r0_9, (unsigned int) 16, reg_r0_4); /* line 3382 */
} /* line 3382 */
  sim_icache_fetch(1913 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_10, reg_r0_8, (unsigned int) -8); /* line 3384 */
   __ADD(reg_r0_11, reg_r0_8, (unsigned int) -16); /* line 3385 */
} /* line 3385 */
  sim_icache_fetch(1915 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SUB(reg_r0_8, (unsigned int) 8, reg_r0_4); /* line 3387 */
   __CMPGE(reg_b0_0, reg_r0_10, (unsigned int) 8); /* line 3388 */
} /* line 3388 */
  sim_icache_fetch(1917 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_12, reg_r0_6, (unsigned int) _X1PACKETX15); /* line 3390 */
} /* line 3390 */
  sim_icache_fetch(1919 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_11, reg_b0_0, reg_r0_11, reg_r0_10); /* line 3392 */
   __ADD(reg_r0_13, reg_r0_12, (unsigned int) 2); /* line 3393 */
} /* line 3393 */
  sim_icache_fetch(1921 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_10, reg_r0_6, ((unsigned int) _X1PACKETX15 + (unsigned int) 1)); /* line 3395 */
} /* line 3395 */
  sim_icache_fetch(1923 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SLCT(reg_r0_9, reg_b0_0, reg_r0_9, reg_r0_8); /* line 3397 */
   __SLCT(reg_r0_13, reg_b0_0, reg_r0_13, reg_r0_10); /* line 3398 */
} /* line 3398 */
  sim_icache_fetch(1925 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_2, reg_r0_7); /* line 3400 */
   __LDBU(reg_r0_13, mem_trace_ld(reg_r0_13,0,1)); /* line 3401 */
} /* line 3401 */
  sim_icache_fetch(1927 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_11, mem_trace_ld((reg_r0_11 + (unsigned int) rmask),0,1)); /* line 3403 */
} /* line 3403 */
  sim_icache_fetch(1929 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBUs(reg_r0_12, mem_trace_ld((reg_r0_12 + (unsigned int) 1),0,1)); /* line 3405 */
} /* line 3405 */
  sim_icache_fetch(1930 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __AND(reg_r0_13, reg_r0_13, reg_r0_11); /* line 3407 */
} /* line 3407 */
  sim_icache_fetch(1931 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_12, reg_r0_12, reg_r0_8); /* line 3409 */
   __SHL(reg_r0_13, reg_r0_13, reg_r0_9); /* line 3410 */
} /* line 3410 */
  sim_icache_fetch(1933 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDBU(reg_r0_6, mem_trace_ld((reg_r0_6 + (unsigned int) _X1PACKETX15),0,1)); /* line 3412 */
} /* line 3412 */
  sim_icache_fetch(1935 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) _X1PACKETX13,0,4), reg_r0_2); /* line 3414 */
} /* line 3414 */
  sim_icache_fetch(1937 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_6, reg_r0_6, reg_r0_4); /* line 3416 */
} /* line 3416 */
  sim_icache_fetch(1938 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __OR(reg_r0_12, reg_r0_6, reg_r0_12); /* line 3418 */
} /* line 3418 */
  sim_icache_fetch(1939 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SLCT(reg_r0_12, reg_b0_0, reg_r0_12, reg_r0_6); /* line 3420 */
} /* line 3420 */
  sim_icache_fetch(1940 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __OR(reg_r0_3, reg_r0_12, reg_r0_13); /* line 3422 */
} /* line 3422 */
  sim_icache_fetch(1941 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) _X1PACKETX14,0,4), reg_r0_5); /* line 3424 */
} /* line 3424 */
  sim_icache_fetch(1943 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(compressgetcode);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3427 */
l_L149X3: ;/* line 3430 */
__LABEL(l_L149X3);
  sim_icache_fetch(1944 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, (unsigned int) -1); /* line 3431 */
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) 4); /* line 3433 */
} /* line 3433 */
  sim_icache_fetch(1946 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L150X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L150X3;
} /* line 3435 */
l_L139X3: ;/* line 3438 */
__LABEL(l_L139X3);
  sim_icache_fetch(1947 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MAX(reg_r0_9, reg_r0_9, 0); /* line 3439 */
   __MOV(reg_r0_3, (unsigned int) -1); /* line 3440 */
} /* line 3440 */
l_L152X3: ;/* line 3442 */
__LABEL(l_L152X3);
  sim_icache_fetch(1949 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPLE(reg_b0_0, reg_r0_9, 0); /* line 3443 */
} /* line 3443 */
  sim_icache_fetch(1950 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L153X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3445 */
  sim_icache_fetch(1951 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) _X1PACKETX14,0,4), reg_r0_9); /* line 3447 */
} /* line 3447 */
  sim_icache_fetch(1953 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) _X1PACKETX13,0,4), reg_r0_8); /* line 3449 */
} /* line 3449 */
  sim_icache_fetch(1955 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(compressgetcode);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3452 */
l_L148X3: ;/* line 3455 */
__LABEL(l_L148X3);
  sim_icache_fetch(1956 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_9, reg_r0_5, (unsigned int) 2); /* line 3456 */
   __MOV(reg_r0_3, (unsigned int) -1); /* line 3458 */
} /* line 3458 */
  sim_icache_fetch(1958 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L152X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L152X3;
} /* line 3460 */
l_L146X3: ;/* line 3463 */
__LABEL(l_L146X3);
  sim_icache_fetch(1959 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_6, mem_trace_ld((unsigned int) buflen,0,4)); /* line 3464 */
} /* line 3464 */
  sim_icache_fetch(1961 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_2, (unsigned int) -1); /* line 3466 */
} /* line 3466 */
  sim_icache_fetch(1962 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_7, reg_r0_6, (unsigned int) -1); /* line 3468 */
} /* line 3468 */
  sim_icache_fetch(1963 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_7, 0); /* line 3470 */
   __GOTO(l_L147X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L147X3;
} /* line 3471 */
l_L145X3: ;/* line 3474 */
__LABEL(l_L145X3);
  sim_icache_fetch(1965 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_9, reg_r0_5, (unsigned int) 1); /* line 3475 */
   __MOV(reg_r0_3, (unsigned int) -1); /* line 3477 */
} /* line 3477 */
  sim_icache_fetch(1967 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L152X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L152X3;
} /* line 3479 */
l_L143X3: ;/* line 3482 */
__LABEL(l_L143X3);
  sim_icache_fetch(1968 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_2, mem_trace_ld((unsigned int) buflen,0,4)); /* line 3483 */
} /* line 3483 */
  sim_icache_fetch(1970 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_6, (unsigned int) -1); /* line 3485 */
} /* line 3485 */
  sim_icache_fetch(1971 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_7, reg_r0_2, (unsigned int) -1); /* line 3487 */
} /* line 3487 */
  sim_icache_fetch(1972 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_7, 0); /* line 3489 */
   __GOTO(l_L144X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L144X3;
} /* line 3490 */
l_L142X3: ;/* line 3493 */
__LABEL(l_L142X3);
  sim_icache_fetch(1974 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_9, reg_r0_5); /* line 3494 */
   __MOV(reg_r0_3, (unsigned int) -1); /* line 3496 */
} /* line 3496 */
  sim_icache_fetch(1976 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L152X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L152X3;
} /* line 3498 */
l_L140X3: ;/* line 3501 */
__LABEL(l_L140X3);
  sim_icache_fetch(1977 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_7, mem_trace_ld((unsigned int) buflen,0,4)); /* line 3502 */
} /* line 3502 */
  sim_icache_fetch(1979 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_6, (unsigned int) -1); /* line 3504 */
} /* line 3504 */
  sim_icache_fetch(1980 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_2, reg_r0_7, (unsigned int) -1); /* line 3506 */
} /* line 3506 */
  sim_icache_fetch(1981 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGE(reg_b0_0, reg_r0_2, 0); /* line 3508 */
   __GOTO(l_L141X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L141X3;
} /* line 3509 */
l_L136X3: ;/* line 3512 */
__LABEL(l_L136X3);
  sim_icache_fetch(1983 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 9); /* line 3513 */
} /* line 3513 */
  sim_icache_fetch(1984 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) 511); /* line 3515 */
} /* line 3515 */
  sim_icache_fetch(1986 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) n_bits,0,4), reg_r0_3); /* line 3517 */
} /* line 3517 */
  sim_icache_fetch(1988 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_6, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 3519 */
} /* line 3519 */
  sim_icache_fetch(1990 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_4); /* line 3521 */
} /* line 3521 */
  sim_icache_fetch(1992 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SUB(reg_r0_2, (unsigned int) 3, reg_r0_6); /* line 3523 */
} /* line 3523 */
  sim_icache_fetch(1993 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) clear_flg,0,4), 0); /* line 3526 */
} /* line 3526 */
  sim_icache_fetch(1995 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L137X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L137X3;
} /* line 3528 */
l_L135X3: ;/* line 3531 */
__LABEL(l_L135X3);
  sim_icache_fetch(1996 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) n_bits,0,4)); /* line 3532 */
} /* line 3532 */
  sim_icache_fetch(1998 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 3534 */
} /* line 3534 */
  sim_icache_fetch(1999 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHL(reg_r0_3, reg_r0_3, reg_r0_2); /* line 3536 */
} /* line 3536 */
  sim_icache_fetch(2000 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) -1); /* line 3538 */
} /* line 3538 */
  sim_icache_fetch(2001 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) maxcode,0,4), reg_r0_3); /* line 3541 */
} /* line 3541 */
  sim_icache_fetch(2003 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L134X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L134X3;
} /* line 3543 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 296: goto l_L134X3;
    case 297: goto l_L137X3;
    case 298: goto l_L138X3;
    case 299: goto l_L141X3;
    case 300: goto l_L144X3;
    case 301: goto l_L147X3;
    case 302: goto l_L150X3;
    case 303: goto l_L151X3;
    case 304: goto l_L153X3;
    case 305: goto l_L133X3;
    case 306: goto l_L149X3;
    case 307: goto l_L139X3;
    case 308: goto l_L152X3;
    case 309: goto l_L148X3;
    case 310: goto l_L146X3;
    case 311: goto l_L145X3;
    case 312: goto l_L143X3;
    case 313: goto l_L142X3;
    case 314: goto l_L140X3;
    case 315: goto l_L136X3;
    case 316: goto l_L135X3;
    case 317:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int writeerr(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(writeerr);  sim_gprof_enter(&sim_gprof_idx,"writeerr");

  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (320 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2004 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 3565 */
} /* line 3565 */
  sim_icache_fetch(2005 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 3567 */
} /* line 3567 */
  sim_icache_fetch(2006 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX8); /* line 3569 */
} /* line 3569 */
		 /* line 3570 */
  sim_icache_fetch(2008 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (320 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 3572 */
l_lr_218: ;/* line 3572 */
__LABEL(l_lr_218);
  sim_icache_fetch(2010 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 3574 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 3575 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 3576 */
   __ADD_CYCLES(1);
} /* line 3576 */
  sim_icache_fetch(2013 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(writeerr);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3579 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 319: goto l_lr_218;
    case 320:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int foreground(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(foreground);  sim_gprof_enter(&sim_gprof_idx,"foreground");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (322 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2014 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 3624 */
  sim_icache_fetch(2015 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) bgnd_flag,0,4)); /* line 3626 */
} /* line 3626 */
  sim_icache_fetch(2017 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, 0); /* line 3628 */
} /* line 3628 */
  sim_icache_fetch(2018 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPNE(reg_b0_0, reg_r0_2, 0); /* line 3630 */
} /* line 3630 */
  sim_icache_fetch(2019 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L154X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3632 */
  sim_icache_fetch(2020 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(foreground);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3635 */
l_L154X3: ;/* line 3638 */
__LABEL(l_L154X3);
  sim_icache_fetch(2021 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 3639 */
} /* line 3639 */
  sim_icache_fetch(2022 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(foreground);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3642 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 321: goto l_L154X3;
    case 322:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int onintr(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(onintr);  sim_gprof_enter(&sim_gprof_idx,"onintr");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (323 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2023 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 3657 */
  sim_icache_fetch(2024 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 3659 */
} /* line 3659 */
  sim_icache_fetch(2025 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(onintr);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3662 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 323:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int oops(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(oops);  sim_gprof_enter(&sim_gprof_idx,"oops");

  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (327 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2026 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 3677 */
} /* line 3677 */
  sim_icache_fetch(2027 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 3679 */
} /* line 3679 */
  sim_icache_fetch(2028 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) do_decomp,0,4)); /* line 3681 */
} /* line 3681 */
  sim_icache_fetch(2030 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) _X1STRINGPACKETX9); /* line 3683 */
} /* line 3683 */
  sim_icache_fetch(2032 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_0, reg_r0_2, (unsigned int) 1); /* line 3685 */
} /* line 3685 */
  sim_icache_fetch(2033 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L155X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3687 */
		 /* line 3688 */
  sim_icache_fetch(2034 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(puts);
   reg_l0_0 = (327 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) puts;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 3690 */
l_lr_224: ;/* line 3690 */
__LABEL(l_lr_224);
l_L155X3: ;/* line 3692 */
__LABEL(l_L155X3);
  sim_icache_fetch(2036 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, (unsigned int) 1); /* line 3693 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 3694 */
   __INC_NOP_CNT((unsigned int) 1);
   __XNOP((unsigned int) 1); /* line 3695 */
   __ADD_CYCLES(1);
} /* line 3695 */
  sim_icache_fetch(2039 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(oops);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3698 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 325: goto l_lr_224;
    case 326: goto l_L155X3;
    case 327:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int cl_block(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(cl_block);  sim_gprof_enter(&sim_gprof_idx,"cl_block");

  sim_check_stack(reg_r0_1, -32); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (341 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2040 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_1, reg_r0_1, (unsigned int) -32); /* line 3744 */
} /* line 3744 */
  sim_icache_fetch(2041 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_1 + (unsigned int) 16),0,4), reg_l0_0); /* line 3746 */
} /* line 3746 */
  sim_icache_fetch(2042 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_2, mem_trace_ld((unsigned int) in_count,0,4)); /* line 3748 */
} /* line 3748 */
  sim_icache_fetch(2044 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDWs(reg_r0_3, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 3750 */
} /* line 3750 */
  sim_icache_fetch(2046 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_4, reg_r0_2, (unsigned int) 10000); /* line 3752 */
} /* line 3752 */
  sim_icache_fetch(2048 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGT(reg_b0_0, reg_r0_2, (unsigned int) 8388607); /* line 3754 */
} /* line 3754 */
  sim_icache_fetch(2050 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SHR(reg_r0_3, reg_r0_3, (unsigned int) 8); /* line 3756 */
} /* line 3756 */
  sim_icache_fetch(2051 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPEQ(reg_b0_1, reg_r0_3, 0); /* line 3758 */
} /* line 3758 */
  sim_icache_fetch(2052 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_2, (unsigned int) 2147483647); /* line 3760 */
} /* line 3760 */
  sim_icache_fetch(2054 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) checkpoint,0,4), reg_r0_4); /* line 3762 */
} /* line 3762 */
  sim_icache_fetch(2056 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L156X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3764 */
  sim_icache_fetch(2057 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_1) {    __BRANCHF(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L157X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3766 */
l_L158X3: ;/* line 3769 */
__LABEL(l_L158X3);
  sim_icache_fetch(2058 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) ratio,0,4)); /* line 3770 */
} /* line 3770 */
  sim_icache_fetch(2060 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, 0); /* line 3772 */
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 3773 */
} /* line 3773 */
  sim_icache_fetch(2062 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __CMPGT(reg_b0_0, reg_r0_2, reg_r0_4); /* line 3775 */
} /* line 3775 */
  sim_icache_fetch(2063 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L159X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3777 */
  sim_icache_fetch(2064 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) ratio,0,4), reg_r0_2); /* line 3779 */
} /* line 3779 */
l_L160X3: ;/* line 3781 */
__LABEL(l_L160X3);
  sim_icache_fetch(2066 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(cl_block);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + (unsigned int) 32; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 3783 */
l_L159X3: ;/* line 3786 */
__LABEL(l_L159X3);
  sim_icache_fetch(2067 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_3, mem_trace_ld((unsigned int) hsize,0,4)); /* line 3787 */
} /* line 3787 */
  sim_icache_fetch(2069 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) ratio,0,4), 0); /* line 3789 */
} /* line 3789 */
		 /* line 3790 */
  sim_icache_fetch(2071 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(cl_hash);
   reg_l0_0 = (341 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) cl_hash;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 3792 */
l_lr_231: ;/* line 3792 */
__LABEL(l_lr_231);
  sim_icache_fetch(2073 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_2, (unsigned int) 257); /* line 3794 */
} /* line 3794 */
  sim_icache_fetch(2075 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, (unsigned int) 1); /* line 3796 */
} /* line 3796 */
  sim_icache_fetch(2076 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, (unsigned int) 256); /* line 3798 */
} /* line 3798 */
  sim_icache_fetch(2078 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) free_ent,0,4), reg_r0_2); /* line 3800 */
} /* line 3800 */
  sim_icache_fetch(2080 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((unsigned int) clear_flg,0,4), reg_r0_4); /* line 3802 */
} /* line 3802 */
		 /* line 3803 */
  sim_icache_fetch(2082 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(output);
   reg_l0_0 = (341 << 5);
   {
    typedef void t_FT (unsigned int);
    t_FT *t_call = (t_FT*) output;
    (*t_call)(reg_r0_3);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 3805 */
l_lr_233: ;/* line 3805 */
__LABEL(l_lr_233);
  sim_icache_fetch(2084 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __LDW(reg_l0_0, mem_trace_ld((reg_r0_1 + (unsigned int) 16),0,4)); /* line 3807 */
   __MOV(reg_r0_3, 0); /* line 3808 */
} /* line 3808 */
  sim_icache_fetch(2086 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L160X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L160X3;
} /* line 3810 */
l_L157X3: ;/* line 3813 */
__LABEL(l_L157X3);
  sim_icache_fetch(2087 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) in_count,0,4)); /* line 3814 */
} /* line 3814 */
  sim_icache_fetch(2089 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_4, reg_r0_3); /* line 3816 */
} /* line 3816 */
		 /* line 3817 */
  sim_icache_fetch(2090 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_5); /* line 3820 */
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(_i_div);
   reg_l0_0 = (341 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 3820 */
l_lr_236: ;/* line 3820 */
__LABEL(l_lr_236);
  sim_icache_fetch(2093 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_3); /* line 3822 */
   __GOTO(l_L158X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L158X3;
} /* line 3823 */
l_L156X3: ;/* line 3826 */
__LABEL(l_L156X3);
  sim_icache_fetch(2095 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_5, mem_trace_ld((unsigned int) in_count,0,4)); /* line 3827 */
} /* line 3827 */
  sim_icache_fetch(2097 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __LDW(reg_r0_4, mem_trace_ld((unsigned int) bytes_out,0,4)); /* line 3829 */
} /* line 3829 */
		 /* line 3830 */
  sim_icache_fetch(2099 + t_thisfile.offset, 3);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __SHL(reg_r0_3, reg_r0_5, (unsigned int) 8); /* line 3832 */
   __INC_BTU_CNT();
   __INC_STALL_CNT();
  sim_gprof_stop(&sim_gprof_idx);
   __CALL(_i_div);
   reg_l0_0 = (341 << 5);
   {
    typedef unsigned int t_FT (unsigned int, unsigned int);
    t_FT *t_call = (t_FT*) _i_div;
    reg_r0_3 =     (*t_call)(reg_r0_3, reg_r0_4);
   }
  sim_gprof_start(&sim_gprof_idx);
} /* line 3833 */
l_lr_239: ;/* line 3833 */
__LABEL(l_lr_239);
  sim_icache_fetch(2102 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_2, reg_r0_3); /* line 3835 */
   __GOTO(l_L158X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L158X3;
} /* line 3836 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 328: goto l_L158X3;
    case 329: goto l_L160X3;
    case 330: goto l_L159X3;
    case 332: goto l_lr_231;
    case 334: goto l_lr_233;
    case 335: goto l_L157X3;
    case 337: goto l_lr_236;
    case 338: goto l_L156X3;
    case 340: goto l_lr_239;
    case 341:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern  cl_hash( unsigned int arg0 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(cl_hash);  sim_gprof_enter(&sim_gprof_idx,"cl_hash");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_l0_0 = (349 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2104 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 3854 */
  sim_icache_fetch(2105 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __SH2ADD(reg_r0_6, reg_r0_3, (unsigned int) htab); /* line 3856 */
} /* line 3856 */
  sim_icache_fetch(2107 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_7, reg_r0_3, (unsigned int) -16); /* line 3858 */
   __ADD(reg_r0_2, reg_r0_6, (unsigned int) -64); /* line 3859 */
} /* line 3859 */
  sim_icache_fetch(2109 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __ADD(reg_r0_4, reg_r0_3, (unsigned int) -32); /* line 3861 */
} /* line 3861 */
l_L161X3: ;/* line 3864 */
__LABEL(l_L161X3);
  sim_icache_fetch(2110 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __MOV(reg_r0_3, reg_r0_2); /* line 3865 */
   __MOV(reg_r0_5, reg_r0_4); /* line 3866 */
} /* line 3866 */
  sim_icache_fetch(2112 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_0, reg_r0_4, 0); /* line 3868 */
   __MOV(reg_r0_8, (unsigned int) -1); /* line 3869 */
} /* line 3869 */
  sim_icache_fetch(2114 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPLT(reg_b0_1, reg_r0_4, (unsigned int) 16); /* line 3871 */
   __ADD(reg_r0_4, reg_r0_4, (unsigned int) -48); /* line 3872 */
} /* line 3872 */
  sim_icache_fetch(2116 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st(reg_r0_2,0,4), reg_r0_8); /* line 3874 */
} /* line 3874 */
  sim_icache_fetch(2117 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 4),0,4), reg_r0_8); /* line 3876 */
} /* line 3876 */
  sim_icache_fetch(2118 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 8),0,4), reg_r0_8); /* line 3878 */
} /* line 3878 */
  sim_icache_fetch(2119 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 12),0,4), reg_r0_8); /* line 3880 */
} /* line 3880 */
  sim_icache_fetch(2120 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 16),0,4), reg_r0_8); /* line 3882 */
} /* line 3882 */
  sim_icache_fetch(2121 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 20),0,4), reg_r0_8); /* line 3884 */
} /* line 3884 */
  sim_icache_fetch(2122 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 24),0,4), reg_r0_8); /* line 3886 */
} /* line 3886 */
  sim_icache_fetch(2123 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 28),0,4), reg_r0_8); /* line 3888 */
} /* line 3888 */
  sim_icache_fetch(2124 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 32),0,4), reg_r0_8); /* line 3890 */
} /* line 3890 */
  sim_icache_fetch(2125 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 36),0,4), reg_r0_8); /* line 3892 */
} /* line 3892 */
  sim_icache_fetch(2126 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 40),0,4), reg_r0_8); /* line 3894 */
} /* line 3894 */
  sim_icache_fetch(2127 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 44),0,4), reg_r0_8); /* line 3896 */
} /* line 3896 */
  sim_icache_fetch(2128 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 48),0,4), reg_r0_8); /* line 3898 */
} /* line 3898 */
  sim_icache_fetch(2129 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 52),0,4), reg_r0_8); /* line 3900 */
} /* line 3900 */
  sim_icache_fetch(2130 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 56),0,4), reg_r0_8); /* line 3902 */
} /* line 3902 */
  sim_icache_fetch(2131 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) 60),0,4), reg_r0_8); /* line 3904 */
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L162X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3905 */
  sim_icache_fetch(2133 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -64),0,4), reg_r0_8); /* line 3907 */
} /* line 3907 */
  sim_icache_fetch(2134 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -60),0,4), reg_r0_8); /* line 3909 */
} /* line 3909 */
  sim_icache_fetch(2135 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -56),0,4), reg_r0_8); /* line 3911 */
} /* line 3911 */
  sim_icache_fetch(2136 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -52),0,4), reg_r0_8); /* line 3913 */
} /* line 3913 */
  sim_icache_fetch(2137 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -48),0,4), reg_r0_8); /* line 3915 */
} /* line 3915 */
  sim_icache_fetch(2138 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -44),0,4), reg_r0_8); /* line 3917 */
} /* line 3917 */
  sim_icache_fetch(2139 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -40),0,4), reg_r0_8); /* line 3919 */
} /* line 3919 */
  sim_icache_fetch(2140 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -36),0,4), reg_r0_8); /* line 3921 */
} /* line 3921 */
  sim_icache_fetch(2141 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -32),0,4), reg_r0_8); /* line 3923 */
} /* line 3923 */
  sim_icache_fetch(2142 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -28),0,4), reg_r0_8); /* line 3925 */
} /* line 3925 */
  sim_icache_fetch(2143 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -24),0,4), reg_r0_8); /* line 3927 */
} /* line 3927 */
  sim_icache_fetch(2144 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -20),0,4), reg_r0_8); /* line 3929 */
} /* line 3929 */
  sim_icache_fetch(2145 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -16),0,4), reg_r0_8); /* line 3931 */
} /* line 3931 */
  sim_icache_fetch(2146 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -12),0,4), reg_r0_8); /* line 3933 */
} /* line 3933 */
  sim_icache_fetch(2147 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -8),0,4), reg_r0_8); /* line 3935 */
} /* line 3935 */
  sim_icache_fetch(2148 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -4),0,4), reg_r0_8); /* line 3937 */
   if (reg_b0_1) {    __BRANCH(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L163X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3938 */
  sim_icache_fetch(2150 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) -48); /* line 3940 */
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) -192); /* line 3941 */
} /* line 3941 */
  sim_icache_fetch(2152 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -128),0,4), reg_r0_8); /* line 3943 */
   __CMPLT(reg_b0_0, reg_r0_7, 0); /* line 3944 */
} /* line 3944 */
  sim_icache_fetch(2154 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -124),0,4), reg_r0_8); /* line 3946 */
} /* line 3946 */
  sim_icache_fetch(2155 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -120),0,4), reg_r0_8); /* line 3948 */
} /* line 3948 */
  sim_icache_fetch(2156 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -116),0,4), reg_r0_8); /* line 3950 */
} /* line 3950 */
  sim_icache_fetch(2157 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -112),0,4), reg_r0_8); /* line 3952 */
} /* line 3952 */
  sim_icache_fetch(2158 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -108),0,4), reg_r0_8); /* line 3954 */
} /* line 3954 */
  sim_icache_fetch(2159 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -104),0,4), reg_r0_8); /* line 3956 */
} /* line 3956 */
  sim_icache_fetch(2160 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -100),0,4), reg_r0_8); /* line 3958 */
} /* line 3958 */
  sim_icache_fetch(2161 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -96),0,4), reg_r0_8); /* line 3960 */
} /* line 3960 */
  sim_icache_fetch(2162 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -92),0,4), reg_r0_8); /* line 3962 */
} /* line 3962 */
  sim_icache_fetch(2163 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -88),0,4), reg_r0_8); /* line 3964 */
} /* line 3964 */
  sim_icache_fetch(2164 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -84),0,4), reg_r0_8); /* line 3966 */
} /* line 3966 */
  sim_icache_fetch(2165 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -80),0,4), reg_r0_8); /* line 3968 */
} /* line 3968 */
  sim_icache_fetch(2166 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -76),0,4), reg_r0_8); /* line 3970 */
} /* line 3970 */
  sim_icache_fetch(2167 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -72),0,4), reg_r0_8); /* line 3972 */
} /* line 3972 */
  sim_icache_fetch(2168 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_2 + (unsigned int) -68),0,4), reg_r0_8); /* line 3974 */
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -192); /* line 3975 */
} /* line 3975 */
  sim_icache_fetch(2170 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (reg_b0_0) {    __BRANCH(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L164X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3978 */
  sim_icache_fetch(2171 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L161X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L161X3;
} /* line 3980 */
l_L164X3: ;/* line 3983 */
__LABEL(l_L164X3);
  sim_icache_fetch(2172 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_3, (unsigned int) -128); /* line 3984 */
   __ADD(reg_r0_7, reg_r0_5, (unsigned int) -32); /* line 3986 */
} /* line 3986 */
  sim_icache_fetch(2174 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L165X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L165X3;
} /* line 3988 */
l_L166X3: ;/* line 3991 */
__LABEL(l_L166X3);
  sim_icache_fetch(2175 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_0, reg_r0_2, 0); /* line 3992 */
   __MOV(reg_r0_8, (unsigned int) -1); /* line 3993 */
} /* line 3993 */
  sim_icache_fetch(2177 + t_thisfile.offset, 2);
{
  unsigned int t__i32_0;
  t__i32_0 = reg_b0_0 ;
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_0, reg_r0_2, (unsigned int) 1); /* line 3995 */
   if (!t__i32_0) {    __BRANCHF(t__i32_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 3996 */
  sim_icache_fetch(2179 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_1, reg_r0_2, (unsigned int) 2); /* line 3998 */
   __CMPGT(reg_b0_2, reg_r0_2, (unsigned int) 3); /* line 3999 */
} /* line 3999 */
  sim_icache_fetch(2181 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_3, reg_r0_2, (unsigned int) 4); /* line 4001 */
   __CMPGT(reg_b0_4, reg_r0_2, (unsigned int) 5); /* line 4002 */
} /* line 4002 */
  sim_icache_fetch(2183 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __CMPGT(reg_b0_5, reg_r0_2, (unsigned int) 6); /* line 4004 */
   __CMPGT(reg_b0_6, reg_r0_2, (unsigned int) 7); /* line 4005 */
} /* line 4005 */
  sim_icache_fetch(2185 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_3 + (unsigned int) 28),0,4), reg_r0_8); /* line 4007 */
   __ADD(reg_r0_2, reg_r0_2, (unsigned int) -8); /* line 4008 */
} /* line 4008 */
  sim_icache_fetch(2187 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   if (!reg_b0_0) {    __BRANCHF(reg_b0_0);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 4010 */
  sim_icache_fetch(2188 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_3 + (unsigned int) 24),0,4), reg_r0_8); /* line 4012 */
   if (!reg_b0_1) {    __BRANCHF(reg_b0_1);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 4013 */
  sim_icache_fetch(2190 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_3 + (unsigned int) 20),0,4), reg_r0_8); /* line 4015 */
   if (!reg_b0_2) {    __BRANCHF(reg_b0_2);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 4016 */
  sim_icache_fetch(2192 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_3 + (unsigned int) 16),0,4), reg_r0_8); /* line 4018 */
   if (!reg_b0_3) {    __BRANCHF(reg_b0_3);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 4019 */
  sim_icache_fetch(2194 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_3 + (unsigned int) 12),0,4), reg_r0_8); /* line 4021 */
   if (!reg_b0_4) {    __BRANCHF(reg_b0_4);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 4022 */
  sim_icache_fetch(2196 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_3 + (unsigned int) 8),0,4), reg_r0_8); /* line 4024 */
   if (!reg_b0_5) {    __BRANCHF(reg_b0_5);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 4025 */
  sim_icache_fetch(2198 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st((reg_r0_3 + (unsigned int) 4),0,4), reg_r0_8); /* line 4027 */
   if (!reg_b0_6) {    __BRANCHF(reg_b0_6);
      __INC_BTC_CNT();
      __INC_STALL_CNT();
      goto l_L167X3; 
   } else {
      __INC_BNT_CNT();
   }
} /* line 4028 */
  sim_icache_fetch(2200 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __STW(mem_trace_st(reg_r0_3,0,4), reg_r0_8); /* line 4030 */
   __ADD(reg_r0_3, reg_r0_3, (unsigned int) -32); /* line 4032 */
} /* line 4032 */
  sim_icache_fetch(2202 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L166X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L166X3;
} /* line 4034 */
l_L167X3: ;/* line 4037 */
__LABEL(l_L167X3);
  sim_icache_fetch(2203 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(cl_hash);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 4039 */
l_L163X3: ;/* line 4042 */
__LABEL(l_L163X3);
  sim_icache_fetch(2204 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) -128); /* line 4043 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) -32); /* line 4045 */
} /* line 4045 */
  sim_icache_fetch(2206 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L165X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L165X3;
} /* line 4047 */
l_L162X3: ;/* line 4050 */
__LABEL(l_L162X3);
  sim_icache_fetch(2207 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_6, reg_r0_6, (unsigned int) -64); /* line 4051 */
   __ADD(reg_r0_7, reg_r0_7, (unsigned int) -16); /* line 4052 */
} /* line 4052 */
l_L165X3: ;/* line 4054 */
__LABEL(l_L165X3);
  sim_icache_fetch(2209 + t_thisfile.offset, 2);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(2);
   __ADD(reg_r0_2, reg_r0_7, (unsigned int) 16); /* line 4055 */
   __ADD(reg_r0_3, reg_r0_6, (unsigned int) -32); /* line 4057 */
} /* line 4057 */
  sim_icache_fetch(2211 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __GOTO(l_L166X3);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   goto l_L166X3;
} /* line 4059 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return;

labelfinder:
  switch (t_labelnum >> 5) {
    case 342: goto l_L161X3;
    case 343: goto l_L164X3;
    case 344: goto l_L166X3;
    case 345: goto l_L167X3;
    case 346: goto l_L163X3;
    case 347: goto l_L162X3;
    case 348: goto l_L165X3;
    case 349:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int prratio( unsigned int arg0, unsigned int arg1 )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(prratio);  sim_gprof_enter(&sim_gprof_idx,"prratio");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_r0_3 =  arg0; 
  reg_r0_4 =  arg1; 
  reg_l0_0 = (350 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2212 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 4074 */
  sim_icache_fetch(2213 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, 0); /* line 4076 */
} /* line 4076 */
  sim_icache_fetch(2214 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(prratio);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 4079 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 350:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}

extern unsigned int version(  )
{
  unsigned int t_client_rpc;
  int t_labelnum;
  unsigned int t_bitbucket;
  static int sim_gprof_idx = 0;
   __ENTRY(version);  sim_gprof_enter(&sim_gprof_idx,"version");

  sim_check_stack(reg_r0_1, 0); 

  t_client_rpc = reg_l0_0; 
  reg_l0_0 = (351 << 5);
  if (!t_thisfile.init) sim_init_fileinfo(&t_thisfile);

		/*  CODE */

  sim_icache_fetch(2215 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(0);
} /* line 4094 */
  sim_icache_fetch(2216 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __MOV(reg_r0_3, 0); /* line 4096 */
} /* line 4096 */
  sim_icache_fetch(2217 + t_thisfile.offset, 1);
{
   __ADD_CYCLES(1);
   __INC_BUNDLE_CNT(1);
   __RETURN(version);   __INC_BTU_CNT();
   __INC_STALL_CNT();
   reg_r0_1 = reg_r0_1 + 0; /* pop frame */
   t_labelnum = reg_l0_0;
   goto labelfinder;
} /* line 4099 */
  reg_l0_0 = t_client_rpc;
  sim_gprof_exit(&sim_gprof_idx);
  return reg_r0_3;

labelfinder:
  switch (t_labelnum >> 5) {
    case 351:
      reg_l0_0 = t_client_rpc;
      sim_gprof_exit(&sim_gprof_idx);
      return reg_r0_3;
    default:
      sim_bad_label(t_labelnum);
    }
}


static sim_fileinfo_t t_thisfile = {"compress.s", 2224, 0, 0, 0, 2};

