/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/RAI/Desktop/university/term 5/CALab/s08/shift_add/testbench.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_3564397177;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
void ieee_p_3564397177_sub_3205433008_91900896(char *, char *, char *, char *, char *, unsigned char , int );


static void work_a_1949178628_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3496);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4632);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(70, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3496);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1949178628_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 4696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t7 = (50 * 1000LL);
    t2 = (t0 + 3744);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 4696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1949178628_3212880686_p_2(char *t0)
{
    char t6[16];
    char t19[8];
    char t20[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    int t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    int64 t16;
    unsigned char t17;
    unsigned char t18;
    int t22;

LAB0:    t1 = (t0 + 4184U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 3032U);
    t4 = (t0 + 7988);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 12;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (12 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 2856U);
    t4 = (t0 + 3032U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 15;
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2528U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 1;
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 8000);
    *((int *)t2) = 1;
    t3 = (t0 + 8004);
    *((int *)t3) = 16;
    t9 = 1;
    t11 = 16;

LAB4:    if (t9 <= t11)
        goto LAB5;

LAB7:    xsi_set_current_line(109, ng0);

LAB23:    *((char **)t1) = &&LAB24;

LAB1:    return;
LAB5:    xsi_set_current_line(92, ng0);
    t4 = (t0 + 2288U);
    t5 = *((char **)t4);
    t12 = *((int *)t5);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, t12, 4);
    t7 = (t0 + 4760);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, t12, 4);
    t4 = (t0 + 4824);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t13 = *((char **)t8);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t16 = (100 * 1000LL);
    t2 = (t0 + 3992);
    xsi_process_wait(t2, t16);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 8000);
    t9 = *((int *)t2);
    t3 = (t0 + 8004);
    t11 = *((int *)t3);
    if (t9 == t11)
        goto LAB7;

LAB20:    t12 = (t9 + 1);
    t9 = t12;
    t4 = (t0 + 8000);
    *((int *)t4) = t9;
    goto LAB4;

LAB8:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t16 = (100 * 1000LL);
    t2 = (t0 + 3992);
    xsi_process_wait(t2, t16);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);

LAB18:    t2 = (t0 + 4504);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t3 = (t0 + 4504);
    *((int *)t3) = 0;
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 3032U);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    memcpy(t19, t5, 4U);
    t4 = (t0 + 7832U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t19, t4, (unsigned char)0, 0);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 3032U);
    t4 = (t0 + 8008);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (1 - 1);
    t10 = (t12 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 3032U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    memcpy(t20, t5, 4U);
    t4 = (t0 + 7832U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t20, t4, (unsigned char)0, 0);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 3032U);
    t4 = (t0 + 8009);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 1;
    t8 = (t7 + 4U);
    *((int *)t8) = 1;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (1 - 1);
    t10 = (t12 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t6, (unsigned char)0, 0);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 3032U);
    t4 = (t0 + 1992U);
    t5 = *((char **)t4);
    memcpy(t21, t5, 8U);
    t4 = (t0 + 7848U);
    ieee_p_3564397177_sub_3205433008_91900896(IEEE_P_3564397177, t2, t3, t21, t4, (unsigned char)0, 0);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3992);
    t3 = (t0 + 2856U);
    t4 = (t0 + 3032U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t22 = (t12 + 1);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t22;
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2408U);
    t3 = *((char **)t2);
    t12 = *((int *)t3);
    t22 = (t12 - 1);
    t2 = (t0 + 2408U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((int *)t2) = t22;
    goto LAB6;

LAB17:    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t17 = *((unsigned char *)t4);
    t18 = (t17 == (unsigned char)3);
    if (t18 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB21:    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_1949178628_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1949178628_3212880686_p_0,(void *)work_a_1949178628_3212880686_p_1,(void *)work_a_1949178628_3212880686_p_2};
	xsi_register_didat("work_a_1949178628_3212880686", "isim/TESTBENCH_isim_beh.exe.sim/work/a_1949178628_3212880686.didat");
	xsi_register_executes(pe);
}
