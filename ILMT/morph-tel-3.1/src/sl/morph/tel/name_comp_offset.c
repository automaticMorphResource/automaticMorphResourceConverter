/**
 * FILE Name :name_comp_offset.c
*/


/** name_comp_offset
 * This function copies the given offsets to the offset name using the required	cases
 * The arguments:
 * offset of int type, and offset_name of char type
 * Return : void
 */

/* HEADER FILES */

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "./headers/defn_telugu.h"
#include "./common/analyser/morph_logger.h"


extern FILE *log_file;
#define FUNCTION "name_comp_offset()"

name_comp_offset(offset,offset_name)
int offset;
char offset_name[30];
{
	char *program_name="name_comp_offset.c";
	//PRINT_LOG(log_file,"This function copies the given offsets to the offset name using the required cases ");
	switch(offset) { 
		case KO : strcpy(offset_name,"koVn");
		break;
		case AUX_AKA_UMDU : strcpy(offset_name,"aka_uMdu");
		break;
		case AUX_AKA_PO : strcpy(offset_name,"aka_po");
		break;
		case AUX_AKA_WAPPU : strcpy(offset_name,"aka_wappu");
		break;
		case AUX_AKA_MANU : strcpy(offset_name,"aka_mAnu");
		break;
		case AUX_AKUMDA_UMDU : strcpy(offset_name,"akuMdA_uMdu");
		break;
		case AUX_AKUMDA_CUDU : strcpy(offset_name,"akuMdA_cUdu");
		break;
		case AUX_I_PO : strcpy(offset_name,"i_po");
		break;
		case AUX_I_VACCU : strcpy(offset_name,"i_vaccu");
		break;
		case AUX_I_UMDU : strcpy(offset_name,"i_uMdu");
		break;
		case AUX_I_CUDU : strcpy(offset_name,"i_cUdu");
		break;
		case AUX_I_WIRU : strcpy(offset_name,"i_wIru");
		break;
		case AUX_I_PEVTTU : strcpy(offset_name,"i_peVttu");
		break;
		case AUX_I_PAREVYYI : strcpy(offset_name,"i_pAreVyyi");
		break;
		case AUX_I_VEVYYI : strcpy(offset_name,"i_veVyyi");
		break;
		case AUX_A_LE : strcpy(offset_name,"a_le");
		break;
		case AUX_A_BADU : strcpy(offset_name,"a_badu");
		break;
		case AUX_A_GALA : strcpy(offset_name,"a_gala");
		break;
		case AUX_A_BO : strcpy(offset_name,"a_po");
		break;
		case AUX_A_NARAMBIMCU : strcpy(offset_name,"a_nAraMBiMcu");
		break;
		case AUX_A_NERU : strcpy(offset_name,"a_neru");
		break;
		case AUX_A_BUNU : strcpy(offset_name,"a_bUnu");
		break;
		case AUX_A_GORU : strcpy(offset_name,"a_goru");
		break;
		case AUX_A_IVVU : strcpy(offset_name,"a_ivvu");
		break;
		case AUX_A_UMDU : strcpy(offset_name,"a_uMdu");
		break;
		case AUX_A_MANU : strcpy(offset_name,"a_manu");
		break;
		case AUX_A_WALACU : strcpy(offset_name,"a_xalacu");
		break;
		case AUX_A_GOVTTU : strcpy(offset_name,"a_goVttu");
		break;
		case AUX_A_BEVTTU : strcpy(offset_name,"a_beVttu");
		break;
		case AUX_A_WAGU : strcpy(offset_name,"a_xagu");
		break;
		case AUX_A_GUDU : strcpy(offset_name,"a_gUdu");
		break;
		case AUX_A_GALUGU : strcpy(offset_name,"a_galugu");
		break;
		case AUX_A_WIYYI : strcpy(offset_name,"a_xiyyi");
		break;
		case AUX_A_VACCU : strcpy(offset_name,"a_vaccu");
		break;
		case AUX_A_JOVCCU : strcpy(offset_name,"a_joVccu");
		break;
		case AUX_A_JALU : strcpy(offset_name,"a_jAlu");
		break;
		case AUX_A_PARACU : strcpy(offset_name,"a_paracu");
		break;
		case AUX_A_KOMANU : strcpy(offset_name,"a_komanu");
		break;
		case AUX_A_SAGU : strcpy(offset_name,"a_sAgu");
		break;
		case AUX_A_VALAYU : strcpy(offset_name,"a_valayu");
		break;
		case AUX_A_BUXXIPUTTU : strcpy(offset_name,"a_buxXiputtu");
		break;
		case AUX_A_BUXXAVVU : strcpy(offset_name,"a_buxXavvu");
		break;
		case AUX_A_BUXXEVYYI : strcpy(offset_name,"a_buxXeVyyi");
		break;
		case AUX_WU_PO : strcpy(offset_name,"wU_po");
		break;
		case AUX_WU_VACCU : strcpy(offset_name,"wU_vaccu");
		break;
		case AUX_WU_UMDU : strcpy(offset_name,"wU_uMdu");
		break;
		default : strcpy(offset_name,"");
		break;
	}
}
