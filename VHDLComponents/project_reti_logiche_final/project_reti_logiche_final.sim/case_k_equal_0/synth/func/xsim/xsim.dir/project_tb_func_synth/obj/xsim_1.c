/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_742(char*, char *);
IKI_DLLESPEC extern void execute_743(char*, char *);
IKI_DLLESPEC extern void execute_744(char*, char *);
IKI_DLLESPEC extern void execute_745(char*, char *);
IKI_DLLESPEC extern void execute_746(char*, char *);
IKI_DLLESPEC extern void execute_24(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_47(char*, char *);
IKI_DLLESPEC extern void execute_85(char*, char *);
IKI_DLLESPEC extern void execute_86(char*, char *);
IKI_DLLESPEC extern void execute_87(char*, char *);
IKI_DLLESPEC extern void execute_89(char*, char *);
IKI_DLLESPEC extern void execute_90(char*, char *);
IKI_DLLESPEC extern void execute_91(char*, char *);
IKI_DLLESPEC extern void execute_92(char*, char *);
IKI_DLLESPEC extern void execute_93(char*, char *);
IKI_DLLESPEC extern void execute_94(char*, char *);
IKI_DLLESPEC extern void execute_95(char*, char *);
IKI_DLLESPEC extern void execute_182(char*, char *);
IKI_DLLESPEC extern void execute_185(char*, char *);
IKI_DLLESPEC extern void execute_195(char*, char *);
IKI_DLLESPEC extern void execute_199(char*, char *);
IKI_DLLESPEC extern void execute_203(char*, char *);
IKI_DLLESPEC extern void execute_207(char*, char *);
IKI_DLLESPEC extern void execute_210(char*, char *);
IKI_DLLESPEC extern void execute_217(char*, char *);
IKI_DLLESPEC extern void execute_222(char*, char *);
IKI_DLLESPEC extern void execute_225(char*, char *);
IKI_DLLESPEC extern void execute_228(char*, char *);
IKI_DLLESPEC extern void execute_240(char*, char *);
IKI_DLLESPEC extern void execute_248(char*, char *);
IKI_DLLESPEC extern void execute_251(char*, char *);
IKI_DLLESPEC extern void execute_256(char*, char *);
IKI_DLLESPEC extern void execute_260(char*, char *);
IKI_DLLESPEC extern void execute_290(char*, char *);
IKI_DLLESPEC extern void execute_301(char*, char *);
IKI_DLLESPEC extern void execute_302(char*, char *);
IKI_DLLESPEC extern void execute_303(char*, char *);
IKI_DLLESPEC extern void execute_343(char*, char *);
IKI_DLLESPEC extern void execute_347(char*, char *);
IKI_DLLESPEC extern void execute_350(char*, char *);
IKI_DLLESPEC extern void execute_356(char*, char *);
IKI_DLLESPEC extern void execute_358(char*, char *);
IKI_DLLESPEC extern void execute_364(char*, char *);
IKI_DLLESPEC extern void execute_365(char*, char *);
IKI_DLLESPEC extern void execute_372(char*, char *);
IKI_DLLESPEC extern void execute_376(char*, char *);
IKI_DLLESPEC extern void execute_380(char*, char *);
IKI_DLLESPEC extern void execute_382(char*, char *);
IKI_DLLESPEC extern void execute_388(char*, char *);
IKI_DLLESPEC extern void execute_397(char*, char *);
IKI_DLLESPEC extern void execute_398(char*, char *);
IKI_DLLESPEC extern void execute_405(char*, char *);
IKI_DLLESPEC extern void execute_409(char*, char *);
IKI_DLLESPEC extern void execute_417(char*, char *);
IKI_DLLESPEC extern void execute_427(char*, char *);
IKI_DLLESPEC extern void execute_429(char*, char *);
IKI_DLLESPEC extern void execute_430(char*, char *);
IKI_DLLESPEC extern void execute_431(char*, char *);
IKI_DLLESPEC extern void execute_485(char*, char *);
IKI_DLLESPEC extern void execute_491(char*, char *);
IKI_DLLESPEC extern void execute_492(char*, char *);
IKI_DLLESPEC extern void execute_539(char*, char *);
IKI_DLLESPEC extern void execute_545(char*, char *);
IKI_DLLESPEC extern void execute_608(char*, char *);
IKI_DLLESPEC extern void execute_620(char*, char *);
IKI_DLLESPEC extern void execute_630(char*, char *);
IKI_DLLESPEC extern void execute_639(char*, char *);
IKI_DLLESPEC extern void execute_645(char*, char *);
IKI_DLLESPEC extern void execute_646(char*, char *);
IKI_DLLESPEC extern void execute_737(char*, char *);
IKI_DLLESPEC extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_115(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_167(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_231(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_245(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_252(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_259(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_266(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_273(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_286(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_293(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_300(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_327(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_334(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_432(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_446(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_453(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_467(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_474(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_481(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_488(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_495(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_511(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_530(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_553(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_568(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_589(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_604(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_612(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_619(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_626(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_633(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_652(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_663(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_674(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_685(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_716(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_726(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_734(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_741(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_748(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_755(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_762(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_769(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_776(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_783(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_790(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[197] = {(funcp)execute_742, (funcp)execute_743, (funcp)execute_744, (funcp)execute_745, (funcp)execute_746, (funcp)execute_24, (funcp)execute_32, (funcp)execute_35, (funcp)execute_47, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_182, (funcp)execute_185, (funcp)execute_195, (funcp)execute_199, (funcp)execute_203, (funcp)execute_207, (funcp)execute_210, (funcp)execute_217, (funcp)execute_222, (funcp)execute_225, (funcp)execute_228, (funcp)execute_240, (funcp)execute_248, (funcp)execute_251, (funcp)execute_256, (funcp)execute_260, (funcp)execute_290, (funcp)execute_301, (funcp)execute_302, (funcp)execute_303, (funcp)execute_343, (funcp)execute_347, (funcp)execute_350, (funcp)execute_356, (funcp)execute_358, (funcp)execute_364, (funcp)execute_365, (funcp)execute_372, (funcp)execute_376, (funcp)execute_380, (funcp)execute_382, (funcp)execute_388, (funcp)execute_397, (funcp)execute_398, (funcp)execute_405, (funcp)execute_409, (funcp)execute_417, (funcp)execute_427, (funcp)execute_429, (funcp)execute_430, (funcp)execute_431, (funcp)execute_485, (funcp)execute_491, (funcp)execute_492, (funcp)execute_539, (funcp)execute_545, (funcp)execute_608, (funcp)execute_620, (funcp)execute_630, (funcp)execute_639, (funcp)execute_645, (funcp)execute_646, (funcp)execute_737, (funcp)transaction_0, (funcp)transaction_2, (funcp)transaction_3, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_58, (funcp)transaction_60, (funcp)transaction_63, (funcp)transaction_64, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_83, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_96, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_99, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_102, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_107, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_110, (funcp)transaction_111, (funcp)transaction_112, (funcp)transaction_113, (funcp)transaction_114, (funcp)transaction_115, (funcp)transaction_116, (funcp)transaction_117, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_122, (funcp)transaction_123, (funcp)transaction_124, (funcp)transaction_125, (funcp)transaction_126, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_130, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_138, (funcp)transaction_143, (funcp)transaction_147, (funcp)transaction_152, (funcp)transaction_161, (funcp)transaction_167, (funcp)transaction_191, (funcp)transaction_204, (funcp)transaction_211, (funcp)transaction_218, (funcp)transaction_231, (funcp)transaction_238, (funcp)transaction_245, (funcp)transaction_252, (funcp)transaction_259, (funcp)transaction_266, (funcp)transaction_273, (funcp)transaction_286, (funcp)transaction_293, (funcp)transaction_300, (funcp)transaction_307, (funcp)transaction_320, (funcp)transaction_327, (funcp)transaction_334, (funcp)transaction_400, (funcp)transaction_407, (funcp)transaction_432, (funcp)transaction_439, (funcp)transaction_446, (funcp)transaction_453, (funcp)transaction_460, (funcp)transaction_467, (funcp)transaction_474, (funcp)transaction_481, (funcp)transaction_488, (funcp)transaction_495, (funcp)transaction_511, (funcp)transaction_530, (funcp)transaction_553, (funcp)transaction_568, (funcp)transaction_589, (funcp)transaction_604, (funcp)transaction_612, (funcp)transaction_619, (funcp)transaction_626, (funcp)transaction_633, (funcp)transaction_652, (funcp)transaction_663, (funcp)transaction_674, (funcp)transaction_685, (funcp)transaction_696, (funcp)transaction_706, (funcp)transaction_716, (funcp)transaction_726, (funcp)transaction_734, (funcp)transaction_741, (funcp)transaction_748, (funcp)transaction_755, (funcp)transaction_762, (funcp)transaction_769, (funcp)transaction_776, (funcp)transaction_783, (funcp)transaction_790};
const int NumRelocateId= 197;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_synth/xsim.reloc",  (void **)funcTab, 197);
	iki_vhdl_file_variable_register(dp + 705720);
	iki_vhdl_file_variable_register(dp + 705776);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
