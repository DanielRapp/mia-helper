PM:
0000
ABCD
1337

MyM:
--DO_1337--
TB:tb_pc, FB:fb_asr
TB:tb_const, ALU:ar_from_buss, CONST:0001001100110111
TB:tb_ar, FB:fb_pm
TB:tb_pc, ALU:ar_from_buss
TB:tb_const, ALU:ar_minus_buss, CONST:0000000001000010
SEQ:upc_jmp_if_n_1, myADR:DO_1337, P:pc_incr
SEQ:upc_halt
--USELESS_LABEL--
--PLACE_ADRESSING_MODE_HERE--

K1:
DO_1337
USELESS_LABEL

K2:
PLACE_ADRESSING_MODE_HERE

CONSTANTS:
alu_nop=0000
ar_from_buss=0001
ar_buss_inv=0010
ar_zero=0011
ar_plus_buss_flags=0100
ar_minus_buss=0101
ar_and_buss=0110
ar_or_buss=0111
ar_plus_buss_noflags=1000
tb_undef=000
tb_ir=001
tb_pm=010
tb_pc=011
tb_ar=100
tb_hr=101
tb_grx=110
tb_const=111
fb_none=000
fb_ir=001
fb_pm=010
fb_pc=011
fb_undef=100
fb_hr=101
fb_grx=110
fb_asr=111
s_grx_to_mux=0
s_m_to_mux=1
pc_unchanged=0
pc_incr=1
upc_incr=0000
upc_load_k1=0001
upc_load_k2=0010
upc_zero=0011
upc_jmp_z_0=0100
upc_jmp=0101
upc_subr=0110
upc_eq_supc=0111
upc_jmp_if_z_1=1000
upc_jmp_if_n_1=1001
upc_jmp_if_c_1=1010
upc_jmp_if_o_1=1011
upc_jmp_if_l_1=1100
upc_jmp_if_c_0=1101
upc_jmp_if_o_0=1110
upc_halt=1111

PC:
00

ASR:
00

AR:
0000

HR:
0000

GR0:
0000

GR1:
0000

GR2:
0000

GR3:
0000

IR:
0000

MyPC:
00

SMyPC:
00

LC:
00

O_flag:

C_flag:

N_flag:

Z_flag:

L_flag:
End_of_dump_file
