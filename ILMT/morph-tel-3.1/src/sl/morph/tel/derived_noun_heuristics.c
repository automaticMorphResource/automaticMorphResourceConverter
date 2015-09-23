/**
 * FILE Name :derived_noun_heuristics.c
*/

/** derived_noun_heuristics
 * This function depending on suffix below mentioned changes noun to noun
 *The arguments:
 * root of char type ,pdgm of char type, DBM_FLAG of int type ,db_lex of GDBM_LEX file type
 * ans_root of char type, aux_verb of char type
 * integer pointer
 * Return : void
 */

 /* HEADER FILES */

#include <gdbm.h>

#include <string.h>
#include <stdio.h>
#include "./headers/defn.h"
#include "./headers/struct.h"
#include "./headers/struct1.h"
#include "./common/analyser/morph_logger.h"


extern FILE *log_file;
#define FUNCTION "derived_noun_heuristics()"

extern int DEBUG;		/* is used for checking existance of root */

extern int sizeof_adaM_suff;
extern int sizeof_wanaM_suff;
extern int sizeof_wunna_suff;
extern int sizeof_ani_suff;
extern int sizeof_ina_suff;
extern int sizeof_e_suff;
extern int sizeof_noun_Ena;
extern int sizeof_noun_lAMti;
extern int sizeof_noun_pron;
extern int sizeof_noun_nom;
extern int sizeof_gala_inf;
extern int sizeof_num_suff;
extern int sizeof_num_gaMta_suff;
extern int sizeof_adv_suff;
extern int sizeof_lex;

/* suff_info structure contains info of suffix, add, pdgm, category, offset */
extern struct suff_info adaM_suff_info_ar[];
extern struct suff_info wanaM_suff_info_ar[];
extern struct suff_info wunna_suff_info_ar[];
extern struct suff_info ani_suff_info_ar[];
extern struct suff_info ina_suff_info_ar[];
extern struct suff_info e_suff_info_ar[];
extern struct suff_info noun_Ena_ar[];
extern struct suff_info noun_lAMti_ar[];
extern struct suff_info noun_pron_ar[];
extern struct suff_info noun_nom_ar[];
extern struct suff_info gala_inf_vrb_ar[];
extern struct suff_info num_suff_info_ar[];
extern struct suff_info num_gaMta_suff_info_ar[];
extern struct suff_info adv_suff_info_ar[];
extern struct lex_info lex_ar[];

/**
 * Prototypes of the functions in this file with a file scope
 */
extern void get_derived_rt();

void derived_noun_heuristics(root,pdgm,DBM_FLAG,db_lex,ans_root,aux_verb)

   char root[SUFFWORDSIZE],pdgm[WORD_SIZE]; /* root of the word, paradigm */
   int DBM_FLAG;			    /* global dictionary flag ,if 1 then 
					       dictionary is there */
   GDBM_FILE db_lex;			 /* GNU database manager includes dbm and ndb
                                   compatability and db_flex is used for opening file */
   char ans_root[SUFFWORDSIZE];	    /*  root after derivation */
   char aux_verb[SUFFWORDSIZE];     /* auxilary verb */
   {
	char *program_name="derived_noun_heuristics.c";
        PRINT_LOG(log_file,"This function depending on suffix below mentioned changes noun to noun");

        /* length of the root,derived root,  */
	int len,derived_root,pos1,loop1;
	/* temporary root, offset_auxilary string */
	char tmp_root[SUFFWORDSIZE],root_bak[SUFFWORDSIZE],offset_aux_str[SUFFWORDSIZE];
	/* different suffixes */
	char suffix_1[2],suffix_2[3],suffix_3[4],suffix_4[5],suffix_5[6],suffix_6[7];
        char suffix_7[8],suffix_8[9],suffix_9[10],suffix_10[11],suffix_11[12];
	/* structure lex_info contains info of  word, paradigm,category,priority. 
          ans_table is object of lex_info */
	struct lex_info ans_table[SmallArray];
	char ans_ar[SmallArray][LargeArray];		/* lexical word */

	strcpy(tmp_root,root);		/* copying root to tmp_root */
	len = strlen(root);		/* finding length of the root */
	/* after reqired conditions satisfied copying root _len to the sufffix */
	if(len>9) strcpy(suffix_9 , root+len-9); else strcpy(suffix_9,"");
	if(len>8) strcpy(suffix_8 , root+len-8); else strcpy(suffix_8,"");
	if(len>7)strcpy(suffix_7 , root+len-7); else strcpy(suffix_7,"");
	if(len>6)strcpy(suffix_6 , root+len-6); else strcpy(suffix_6,"");
	if(len>5)strcpy(suffix_5 , root+len-5); else strcpy(suffix_5,"");
	if(len>4)strcpy(suffix_4 , root+len-4); else strcpy(suffix_4,"");
	if(len>3)strcpy(suffix_3 , root+len-3); else strcpy(suffix_3,"");
	if(len>2)strcpy(suffix_2 , root+len-2); else strcpy(suffix_2,"");
	if(len>1)strcpy(suffix_1 , root+len-1); else strcpy(suffix_1,"");

	derived_root = 0;    /* intialising derived_root to 0 */
	ans_root[0] = '\0';  /* intialising ans_root to null */
       /* comparing emuMxu with suffix_6 and paradigm with meku and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if((!strcmp(suffix_6,"emuMxu")) && !strcmp(pdgm,"meku") && ( ans_root[0] == '\0')) 	   {
	    derived_root = 1;                                
	    len = strlen(root);
	    root[len-5] = '\0';
            /* this function is used to find the derivational root */
	   //get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
              {                                      
		if(aux_verb[0] != '\0')  /* executes when aux_verb not  equals to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"muMxu");
		strcat(aux_verb,"muMxu");
	      }
	  }
       /* comparing gawweV with suffix_6 and paradigm with peVtteV and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"gawweV") && !strcmp(pdgm,"peVtteV") && (ans_root[0] == '\0')) 
	  {
	     derived_root = 1;
	     len = strlen(root);
		/* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	     //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	     if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	       {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gawweV");
		strcat(aux_verb,"gawweV");
	       }
	  }
       /* comparing Ayana with suffix_5 and paradigm with Ayana and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"Ayana") && !strcmp(pdgm,"Ayana") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"Ayana");
		strcat(aux_verb,"Ayana");
	      }
	  }
       /* comparing gAru with suffix_4 and paradigm with vAru and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"gAru") && !strcmp(pdgm,"vAru") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
		/* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcat(ans_root);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gAru");
		strcat(aux_verb,"gAru");

	      }
	   }
       /* comparing gAdu with suffix_4 and paradigm with vAdu and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"gAdu") && !strcmp(pdgm,"vAdu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		   { 
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		   }
		 //strcat(ans_root,"gAdu");
		 strcat(aux_verb,"gAdu");
	      }
	  }
       /* comparing guru with suffix_4 and paradigm with vAru and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"guru") && !strcmp(pdgm,"vAru") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
		/* this funtion is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		   {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
	             //strcat(ans_root,aux_verb);
                     //strcpy(aux_verb,"");
                   }
		//strcat(ans_root,"maMxi");
		strcat(aux_verb,"maMxi");
	      }
	    }
       /* comparing maMxi with suffix_5 and paradigm with maMxi and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"maMxi") && !strcmp(pdgm,"maMxi") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
		/* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
      		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,"");
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
	      	   }
		//strcat(ans_root,"avi");
		strcat(aux_verb,"avi");
	      }
	   }
       	   /* comparing paradigm with maMxi and ans_root equals 
	   to null. executes only when all the conditions are satisfied  */
	if(!strcmp(pdgm,"maMxi") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,num_gaMta_suff_info_ar->suffix,sizeof_num_gaMta_suff,sizeof(num_gaMta_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_gaMta_suff_info_ar->suffix,sizeof_num_gaMta_suff,sizeof(num_gaMta_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')	 /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"avi");
		strcat(aux_verb,"avi");
	      }
	   }	 
         /* comparing muppAvu with suffix_7 and paradigm with meku and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"muppAvu") && !strcmp(pdgm,"meku") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
	 	if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"muppAvu");
		strcat(aux_verb,"muppAvu");
	      }
	   }
       /* comparing MpAvu with suffix_5 and MbAvu with suffix_5 ,paradigm with meku
     and ans_root equals to null. executes only when all the conditions are satisfied  */
	if((!strcmp(suffix_5,"MpAvu") || !strcmp(suffix_5,"MbAvu")) && !strcmp(pdgm,"meku") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')    /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')	/* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
	             //strcpy(aux_verb,"");
	          }
		//strcat(ans_root,"MpAvu");
		strcat(aux_verb,"MpAvu");
	      }
	   }
       /* comparing nnara with suffix_5 and paradigm with kota and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"nnara") && !strcmp(pdgm,"kota") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);//strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ara");
		strcat(aux_verb,"ara");
	      }
	    }
        /* comparing gaMta with suffix_5 and paradigm with kota and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"gaMta") && !strcmp(pdgm,"kota") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	     /* ths function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')	/* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gaMta");
		strcat(aux_verb,"gaMta");
	      }
	    }
        /* comparing iMti with suffix_4 and paradigm with koti and ans_root equals 
	to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"iMti") && !strcmp(pdgm,"koti") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
	            //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gaMta");
		strcat(aux_verb,"gaMta");
	      }
	  }
	/* wunna Cases */
        /* comparing tunnavAda with suffix_9 or wunnavAdu with suffix_9 or cunnavAdu with
	   suffix_9 paradigm with vAdu and ans_root equals to null.
	   executes only when all the  conditions are satisfied  */
	if((!strcmp(suffix_9,"tunnavAdu") || !strcmp(suffix_9,"wunnavAdu") || !strcmp(suffix_9,"cunnavAdu")) && !strcmp(pdgm,"vAdu")) 
          {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')	/* executes when aux_verb not equal to null */
	          {
	 	     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"wunna_vAdu");
		strcat(aux_verb,"wunna_vAdu");
	//	strcat(aux_verb,"vAdu");
	      }
	  }
        /* comparing tunnavAru with suffix_9 or wunnavAru with suffix_9 or cunnavAru with
	   suffix_9 paradigm with vAru and ans_root equals to null.
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_9,"tunnavAru") || !strcmp(suffix_9,"wunnavAru") || !strcmp(suffix_9,"cunnavAru")) && !strcmp(pdgm,"vAru")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
//get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
//		printf("PARAMESH_NOUN root=|%s|,ans_root=|%s|, aux_verb=|%s|\n", root, ans_root, aux_verb);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
	   	if(aux_verb[0] != '\0')	/* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"wunna_vAru");
		strcat(aux_verb,"wunna_vAru");
//		printf("PARAMESH VERB-deri: aux_verb=|%s|\n", aux_verb);
		//strcat(ans_root,"vAru");
		//strcat(aux_verb,"vAru");
	      }
	  }
        /* comparing tunnavAlYlu with suffix_11 or wunnavAlYlu with suffix_11 or 
	  cunnavAlYlu with  suffix_11 paradigm with vAlYlu and ans_root equals to null.
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_11,"tunnavAlYlu") || !strcmp(suffix_11,"wunnavAlYlu") || !strcmp(suffix_11,"cunnavAlYlu")) && !strcmp(pdgm,"vAlYlu")) 
	  {
	    derived_root = 1;
	    root[len-4] = 'r';
	    root[len-3] = 'u';
	    root[len-2] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"wunna_vAlYlu");
		strcat(aux_verb,"wunna_vAlYlu");
	//	strcat(aux_verb,"vAlYlu");
	      }
	  }
        /* comparing tunnaaxi with suffix_8 or wunnaaxi with suffix_8 or cunnaaxi with
	   suffix_8 paradigm with axi and ans_root equals to null.
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_8,"tunnaaxi") || !strcmp(suffix_8,"wunnaaxi") || !strcmp(suffix_8,"cunnaaxi")) && !strcmp(pdgm,"axi")) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-3] = 'x';
	    root[len-2] = 'i';
	    root[len-1] = '\0';
	   /* this function is used to find the derivational root */
get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
	 	if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"wunna_axi");
		strcat(aux_verb,"wunna_axi");
		//strcat(aux_verb,"axi");
	      }
	    strcpy(root,tmp_root);
	  }
        /* comparing tunnaxi with suffix_7 or wunnaxi with suffix_7 or cunnaxi with
	   suffix_7 paradigm with axi and ans_root equals to null.
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_7,"tunnaxi") || !strcmp(suffix_7,"wunnaxi") || !strcmp(suffix_7,"cunnaxi")) && !strcmp(pdgm,"axi")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,wunna_suff_info_ar->suffix,sizeof_wunna_suff,sizeof(wunna_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')   /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
                    //strcpy(aux_verb,"");
                  }
	//	strcat(ans_root,"wunna_axi");
		strcat(aux_verb,"wunna_axi");
		//strcat(aux_verb,"axi");
	    }
	 }
	/* ani cases */
        /* comparing nivAdu with suffix_6 paradigm with vAdu.
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_6,"nivAdu") && !strcmp(pdgm,"vAdu")) 
	  {
	    derived_root = 1;
	    /* this function is used tofind the derivational trrot */
get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
           //get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	   if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
             {
		if(aux_verb[0] != '\0')    /* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);//strcpy(aux_verb,"");
		     }
		     //strcat(ans_root,"ani_vAdu");
		     strcat(aux_verb,"ani_vAdu");
		     //strcat(aux_verb,"vAdu_adj");
		  }
	  }
        /* comparing nivAru with suffix_6 paradigm with vAru.
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_6,"nivAru") && !strcmp(pdgm,"vAru")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')	 /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
	        //strcat(ans_root,"ani_vAru");
	        strcat(aux_verb,"ani_vAru");
	        //strcat(aux_verb,"vAru_adj");
	     }
	   }
        /* comparing nivAlYlu with suffix_8 paradigm with vAlYlu.
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_8,"nivAlYlu") && !strcmp(pdgm,"vAlYlu")) 
	  {
	     derived_root = 1;
	     root[len-4] = 'r';
	     root[len-3] = 'u';
	     root[len-2] = '\0';
		/* this function is used to find the derivational morph */
get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	     //get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	     if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	       {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ani_vAlYlu");
		strcat(aux_verb,"ani_vAlYlu");
		//strcat(aux_verb,"vAlYlu_adj");
	       }
	   }
        /* comparing niaxi with suffix_5 paradigm with axi.
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_5,"niaxi") && !strcmp(pdgm,"axi")) 
	  { /*anaaxi->aniaxi */
	    derived_root = 1;
	    len = strlen(root);
	    root[len-3] = 'x';
	    root[len-2] = 'i';
	    root[len-1] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ani_axi");
		strcat(aux_verb,"ani_axi");
		//strcat(aux_verb,"axi_adj");
	      }
	    strcpy(root,tmp_root);
	  }
        /* comparing nixi with suffix_4 paradigm with axi.
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_4,"nixi") && !strcmp(pdgm,"axi")) 
	  { /*anaxi->anixi */
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ani_suff_info_ar->suffix,sizeof_ani_suff,sizeof(ani_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ani_axi");
		strcat(aux_verb,"ani_axi");
		//strcat(aux_verb,"axi_adj");
	      }
	  }
	/* ina cases */
        /* comparing inavAdu with suffix_7 or nnavAdu with suffix_7 paradigm with vAdu
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_7,"inavAdu") || !strcmp(suffix_7,"nnavAdu")) && !strcmp(pdgm,"vAdu")) 
	  {
	    derived_root = 1;
		/* this function is used to find the derivational root */
get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ina_vAdu");
		strcat(aux_verb,"ina_vAdu");
		//strcat(aux_verb,"vAdu");
	      }
	  }
        /* comparing inavAru with suffix_7 or nnavAru with suffix_7 paradigm with vAru
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_7,"inavAru") || !strcmp(suffix_7,"nnavAru")) && !strcmp(pdgm,"vAru")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
	   	if(aux_verb[0] != '\0')	/* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ina_vAru");
		strcat(aux_verb,"ina_vAru");
		//strcat(aux_verb,"vAru");
	      }
	  }
        /* comparing inavAlYlu with suffix_9 or nnavAlYlu with suffix_9 paradigm with vAlYlu
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_9,"inavAlYlu") || !strcmp(suffix_9,"nnavAlYlu")) && !strcmp(pdgm,"vAlYlu")) 
	  {
	    derived_root = 1;
	    root[len-4] = 'r';
	    root[len-3] = 'u';
	    root[len-2] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ina_vAlYlu");
		strcat(aux_verb,"ina_vAlYlu");
		//strcat(aux_verb,"vAlYlu");
	      }
	  }
        /* comparing inaaxi with suffix_6 and paradigm with axi
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_6,"inaaxi") && !strcmp(pdgm,"axi"))
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-3] = 'x';
	    root[len-2] = 'i';
	    root[len-1] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')   /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')   /* executes when aux_verb not equal to null */
	          {
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ina_axi");
		strcat(aux_verb,"ina_axi");
		//strcat(aux_verb,"_axi");
	      }
	    strcpy(root,tmp_root);
	  }
        /* comparing Maxi with suffix_4 and paradigm with axi
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_4,"Maxi") && !strcmp(pdgm,"axi")) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-4] = 'n'; /* vacciMxAniki -> vacciMaxi + ki -> vaccinaxi + ki */
	    /* this function is used to find the derivational root */
get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ina_axi");
		strcat(aux_verb,"ina_axi");
		//strcat(aux_verb,"axi");
	      }
	    strcpy(root,tmp_root);
	  }
        /* comparing inaxi with suffix_5 or nnaxi with suffix_5 paradigm with axi
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_5,"inaxi") || !strcmp(suffix_5,"nnaxi")) && !strcmp(pdgm,"axi")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,ina_suff_info_ar->suffix,sizeof_ina_suff,sizeof(ina_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"ina_axi");
		strcat(aux_verb,"ina_axi");
		//strcat(aux_verb,"axi");
	      }
	   }
	/* e cases */
        /* comparing evAdu with suffix_5 and paradigm with vAdu
	   executes only when all the  conditions are satisfied  */
 	else if(!strcmp(suffix_5,"evAdu") && !strcmp(pdgm,"vAdu")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')   /* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,"");
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
	//strcat(ans_root,"e_vAdu");
	strcat(aux_verb,"e_vAdu");
	//	strcat(aux_verb,"vAdu");
	      }
	  }
        /* comparing evAru with suffix_5 and paradigm with vAru
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_5,"evAru") && !strcmp(pdgm,"vAru"))
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"e_vAru");
		strcat(aux_verb,"e_vAru");
		//strcat(aux_verb,"vAru");
	      }
	  }
        /* comparing evalYlu with suffix_7 and paradigm with vAlYlu
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_7,"evAlYlu") && !strcmp(pdgm,"vAlYlu")) 
	  {
	    derived_root = 1;
	    root[len-4] = 'r';
	    root[len-3] = 'u';
	    root[len-2] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"e_vAlYlu");
		strcat(aux_verb,"e_vAlYlu");
		//strcat(aux_verb,"vAlYlu");
	      }
	  }
        /* comparing eaxi with suffix_4 and paradigm with axi
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_4,"eaxi") && !strcmp(pdgm,"axi")) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-3] = 'x';
	    root[len-2]= 'i';
	    root[len-1] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    strcpy(root,tmp_root);
	    if(ans_root[0] != '\0')  	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */ 
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"e_axi");
		strcat(aux_verb,"e_axi");
		//strcat(aux_verb,"axi");
	      }
	  }
        /* comparing exi with suffix_3 and paradigm with axi
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_3,"exi") && !strcmp(pdgm,"axi")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,e_suff_info_ar->suffix,sizeof_e_suff,sizeof(e_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')	/* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		    }
		    //strcat(ans_root,"e_axi");
		    strcat(aux_verb,"e_axi");
		  }
	      }

	/*adaM cases */
        /* comparing adaM with suffix_4 or ataM with suffix_4 or adamu with suffix_5 or 
	atamu with suffix_5  or otaM with suffix_4 or odaM with suffix_4 or otamu with suffix_5
	 or odamu with suffix_5 or ddaM with suffix_4 or ttaM with suffix_4 
	and paradigm with puswakaM  executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_4,"adaM") || (!strcmp(suffix_4,"ataM")) || !strcmp(suffix_5,"atamu") || !strcmp(suffix_5,"adamu") || !strcmp(suffix_4,"otaM") || !strcmp(suffix_4,"odaM") || !strcmp(suffix_5 ,"otamu") || !strcmp(suffix_5,"odamu") || !strcmp(suffix_4,"ddaM") || !strcmp(suffix_4,"ttaM")) && !strcmp(pdgm,"puswakaM")) 
	  {
	    derived_root = 1;
	    /* this function is used to find the derivational root */
get_derived_rt(root,adaM_suff_info_ar->suffix,sizeof_adaM_suff,sizeof(adaM_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,adaM_suff_info_ar->suffix,sizeof_adaM_suff,sizeof(adaM_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')    /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */ 
	          {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"adaM");
		strcat(aux_verb,"adaM");
	      }
	  }
        /* comparing uta with suffix_3 and paradigm with kota
	   executes only when all the  conditions are satisfied  */
	else if(!strcmp(suffix_3,"uta") && !strcmp(pdgm,"kota")) 
	  {
	    derived_root = 1;
	   /* tjis function is used to find the derivational root */
get_derived_rt(root,adaM_suff_info_ar->suffix,sizeof_adaM_suff,sizeof(adaM_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,adaM_suff_info_ar->suffix,sizeof_adaM_suff,sizeof(adaM_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
	 	if(aux_verb[0] != '\0')   /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"adaM");
		strcat(aux_verb,"adaM");
	      }
	   }
	/* wanaM case */
        /* comparing wanaM with suffix_5 or xanaM with suffix_5 and paradigm with puswakaM
	   executes only when all the  conditions are satisfied  */
	else if((!strcmp(suffix_5,"wanaM") || !strcmp(suffix_5,"xanaM")) && !strcmp(pdgm,"puswakaM")) 
	  {
	    derived_root = 1;
	    /* ths function is used to find the derivational root */
get_derived_rt(root,wanaM_suff_info_ar->suffix,sizeof_wanaM_suff,sizeof(wanaM_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	   //get_derived_rt(root,wanaM_suff_info_ar->suffix,sizeof_wanaM_suff,sizeof(wanaM_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	   if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	     {
		if(aux_verb[0] != '\0')  /* executes when aux_verb  not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
                    //strcat(ans_root,aux_verb);
                    //strcpy(aux_verb,"");
                  }
	//	strcat(ans_root,"wanaM");
		strcat(aux_verb,"wanaM");
       	     }
	  }
	/* comparing galaxi with suffix_6 and paradigm with axi and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"galaxi") && !strcmp(pdgm,"axi") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
	    /* this function is used for finding derivational root */
get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	   if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	     {
		if(aux_verb[0] != '\0')     /* executes when aux_verb not equal to null */
		  { 
		     strcat(aux_verb,"_");
		//strcat(ans_root,"");
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gala_xi");
////		strcat(aux_verb,"gala_xi");
//commented by paramesh_290612 rAgalavAdu rA_a_gala_gala_vAdu
		strcat(aux_verb,"xi");
	     }
	   else
	     {
		/* this function is used to find the derivational root */
get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
		//get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	       if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
		 {
		   if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		      { 
		        strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			//strcat(ans_root,aux_verb);
			//strcpy(aux_verb,"");
		      }
		    //strcat(ans_root,"gala_xi");
		    ////strcat(aux_verb,"gala_xi");
		    strcat(aux_verb,"xi");
		 }
	     }
	   strcpy(root,tmp_root);
	 }
       /* comparing galaaxi with suffix_7 and paradigm with axi and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"galaaxi") && !strcmp(pdgm,"axi") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gala_xi");
		////strcat(aux_verb,"gala_xi");
		strcat(aux_verb,"xi");
	      }
	    else
	      {
		/* this function is used to find the derivational root */
get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
		//get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
		  {
	    	    if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		       { 
			  strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			  //strcat(ans_root,aux_verb);
		 	  //strcpy(aux_verb,"");
		       }
		     //strcat(ans_root,"gala_xi");
		     ////strcat(aux_verb,"gala_xi");
		     strcat(aux_verb,"xi");
		  }
	      }
	    strcpy(root,tmp_root);
	  }
       /* comparing galavAdu with suffix_8 and paradigm with vAdu and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"galavAdu") && !strcmp(pdgm,"vAdu") && (ans_root[0] == '\0'))
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
	   /* this function is used to find the derivational root */
get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		     strcat(aux_verb,"_");
		//strcat(ans_root,"");
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gala_vAdu");
		////strcat(aux_verb,"gala_vAdu");
		strcat(aux_verb,"vAdu");
	      }
	    else
	      {
		/* this function is used to find the derivational root */
get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
	        //get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
		  {
		    if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		      {
			 strcat(aux_verb,"_");
		//strcat(ans_root,"");
			 //strcat(ans_root,aux_verb);
			 //strcpy(aux_verb,"");
		      }
		    //strcat(ans_root,"gala_vAdu");
		    ////strcat(aux_verb,"gala_vAdu");
		    strcat(aux_verb,"vAdu");
		  }
	      }
	    strcpy(root,tmp_root);
	  }
       /* comparing galavAru with suffix_8 and paradigm with vAru and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"galavAru") && !strcmp(pdgm,"vAru") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_nom_ar->suffix,sizeof_noun_nom,sizeof(noun_nom_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
	          {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"gala_vAru");
		////strcat(aux_verb,"gala_vAru");
		strcat(aux_verb,"vAru");
	      }
	    else
	      {
	 	/* this function is used to find the derivational root */
get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"verb",ans_root,aux_verb,offset_aux_str);
		//get_derived_rt(root,gala_inf_vrb_ar->suffix,sizeof_gala_inf,sizeof(gala_inf_vrb_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		if(ans_root[0] != '\0')   /* executes when ans_root not equal to null */
		  {
		     if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		       {
			 strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			 //strcat(ans_root,aux_verb);
		         //strcpy(aux_verb,"");
		       }
		     //strcat(ans_root,"gala_vAru");
		     ////strcat(aux_verb,"gala_vAru");
		     strcat(aux_verb,"vAru");
		  }
	      }
	    strcpy(root,tmp_root);
	  }
       /* comparing axi with suffix_3 and paradigm with axi and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_3,"axi") && !strcmp(pdgm,"axi") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-3] = 'x';
	    root[len-2] = 'i';
	    root[len-1] = '\0';
	    strcpy(root_bak,root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"xi");
		strcat(aux_verb,"xi");
	      }
	    else
	      {
	        strcpy(root,root_bak);
	        root[len-3] = '\0';
		/* this function is used to find the derivational root */ 
get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		//get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		if(ans_root[0] != '\0')    /* executes when ans_root not equal to null */
		  {
		    if(aux_verb[0] != '\0')	/* executes when aux_verb not equal to null */
		      {
			 strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			 //strcat(ans_root,aux_verb);
		         //strcpy(aux_verb,"");
		      }
		    //strcat(ans_root,"Ena_xi");
		    strcat(aux_verb,"Ena_xi");
	           }
		 else
		   {
		     strcpy(root,root_bak);
		     /* this function is used to find the derivational root */
get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		     //get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		     if(ans_root[0] != '\0')   /* executes when ans_root not equal to null */
			{
			  if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */                            { 
			      strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			      //strcat(ans_root,aux_verb);
			      //strcpy(aux_verb,"");
			    }
			  //strcat(ans_root,"lAMti_xi");
			  strcat(aux_verb,"lAMti_xi");
			}
		      else
			{
			  strcpy(root,root_bak);
			  /* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
			  //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
			   if(ans_root[0] != '\0') /* executes when ans_root not equal to null */                             {
			       if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */				 {
				   strcat(aux_verb,"_");
		//strcat(ans_root,""); 
				   //strcat(ans_root,aux_verb);
				   //strcpy(aux_verb,"");
				 }
				//strcat(ans_root,"xi");
				strcat(aux_verb,"xi");
			     }
			   else
			     {
			       strcpy(root,root_bak);
				 /* this function is used to find the derivational root */
get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
			       //get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
			       if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
				 {		
				   if(aux_verb[0] != '\0')/* executes when aiux_verb not equal to null */
				     { 
			              strcat(aux_verb,"_");
		//strcat(ans_root,"");
				      //strcat(ans_root,aux_verb);
			              //strcpy(aux_verb,"");
				     }
			           //strcat(ans_root,"xi");
			           strcat(aux_verb,"xi");
				 }
			     }	
			}
		   }
	      }
           strcpy(root,tmp_root);
	  }	
	/* comparing xi with suffix_2 and paradigm with axi and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_2,"xi") && !strcmp(pdgm,"axi") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    strcpy(root_bak,root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"xi");
		strcat(aux_verb,"xi");
	      }
	    else
	      {
	        root[len-2] = '\0';
		/* this function is used to find the derivational root */
get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		//get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
		  {
		    if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
		      {
			 strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			 //strcat(ans_root,aux_verb);
			 //strcpy(aux_verb,"");
		      }
		    //strcat(ans_root,"Ena_xi");
		    strcat(aux_verb,"Ena_xi");
		  }
		else
		  {
		    strcpy(root,root_bak);
		    root[len-2] = '\0';
		    /* this function is used to find the derivational root */
get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		    //get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		    if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
		      {
			if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
			  {
			    strcat(aux_verb,"_");
		//strcat(ans_root,"");
			    //strcat(ans_root,aux_verb);
			    //strcpy(aux_verb,"");
			  }
			//strcat(ans_root,"lAMti_xi");
			strcat(aux_verb,"lAMti_xi");
		      }
		    else
		      {
			strcpy(root,root_bak);
			root[len-2] = '\0';
			 /* this function is used to find the derivational root */ 
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
			//get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
			if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
			  {
			    if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
                              {
				strcat(aux_verb,"_");
		//strcat(ans_root,""); 
				//strcat(ans_root,aux_verb);
				//strcpy(aux_verb,"");
			      }
			    //strcat(ans_root,"xi");
			    strcat(aux_verb,"xi");
			  }
			else
			  {
			    strcpy(root,root_bak);	
			    root[len-2] = '\0';
			    /* this function is used to find the derivational root */
get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
			    //get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
			    if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
			      {
				if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
				  {
				    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
				    //strcat(ans_root,aux_verb);
				    //strcpy(aux_verb,"");
				  }
				//strcat(ans_root,"xi");
				strcat(aux_verb,"xi");
			     }
			  }
		      }
		  }
	    }
	  strcpy(root,tmp_root);
	 }	
       /* comparing vAdu with suffix_4 and paradigm with Vadu and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"vAdu") && !strcmp(pdgm,"vAdu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    strcpy(root_bak,root);
		/* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')     /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')   /* executes when aux_verb not equal to null */
	          {
		     strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		     //strcat(ans_root,aux_verb);
		     //strcpy(aux_verb,"");
	          }
		//strcat(ans_root,"vAdu");
		strcat(aux_verb,"vAdu");
	      }
	     else
	      {
		strcpy(root,root_bak);
	        root[len-4] = '\0';
		/* this function is used to find the derivational root */
get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		//get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	        if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
		  {
		     if(aux_verb[0] != '\0')    /* executes when aux_verb not equal to null */ 
			{
			  strcat(aux_verb,"_");
		//strcat(ans_root,"");
		          //strcat(ans_root,aux_verb);
			  //strcpy(aux_verb,"");
			}
		     //strcat(ans_root,"Ena_vAdu");
		     strcat(aux_verb,"Ena_vAdu");
		  }
		else
		 {
		   strcpy(root,root_bak);
		   root[len-4] = '\0';
		   /* this function is used to find the derivational root */
get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		   //get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	           if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
		     {
			if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
			  { 
			    strcat(aux_verb,"_");
		//strcat(ans_root,"");
	                    //strcat(ans_root,aux_verb);
		            //strcpy(aux_verb,"");
			  }
		        //strcat(ans_root,"lAMti_vAdu");
		        strcat(aux_verb,"lAMti_vAdu");
		     }
		   else
		     {
			strcpy(root,root_bak);
			root[len-4] = '\0';
			/* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		        //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
			if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
			  {
  			   if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
                             {
                               strcat(aux_verb,"_");
		//strcat(ans_root,""); 
                               //strcat(ans_root,aux_verb);
			       //strcpy(aux_verb,"");
			     }
			   //strcat(ans_root,"vAdu");
			   strcat(aux_verb,"vAdu");
			  }
			else
			  {
			    strcpy(root,root_bak);
			    root[len-4] = '\0';
			    /* this function is used to find the derivational root */
get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
			   //get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
			   if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
			     {
			       if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
			 	 { 
				   strcat(aux_verb,"_");
		//strcat(ans_root,""); 
				   //strcat(ans_root,aux_verb);
				   //strcpy(aux_verb,"");
				 }
			       //strcat(ans_root,"vAdu");
			       strcat(aux_verb,"vAdu");
			     }
			  }
		     }
		 }
	      }
	    strcpy(root,tmp_root);
	  }
       /* comparing vAru with suffix_4 and paradigm with vAru and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"vAru") && !strcmp(pdgm,"vAru") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    strcpy(root_bak,root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"vAru");
		strcat(aux_verb,"vAru");
	      }
	    else
	      {
		strcpy(root,root_bak);
		root[len-4] = '\0';
		/* this function is used to find the derivational root */
get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		//get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		if(ans_root[0] != '\0')   /* executes when ans_root not equal to null */
		  {
		    if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		      {
		        strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		        //strcat(ans_root,aux_verb);
			//strcpy(aux_verb,"");
		      }
		    //strcat(ans_root,"Ena_vAru");
		    strcat(aux_verb,"Ena_vAru");
		  }
		else
		 {
		   strcpy(root,root_bak);
		   root[len-4] = '\0';
		   /* this function is used to find the derivational root */
get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	           //get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		   if(ans_root[0] != '\0')   /* executes when ans_root not equal to null */
		     {
		       if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
			 {
			   strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			   //strcat(ans_root,aux_verb);
			   //strcpy(aux_verb,"");
			 }
		       //strcat(ans_root,"lAMti_vAru");
		       strcat(aux_verb,"lAMti_vAru");
		     }
		   else
		     {
		       strcpy(root,root_bak);
		       root[len-4] = '\0';
		       /* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		       //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		       if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
			 {
			   if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */ 
			     { 
			       strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			       //strcat(ans_root,aux_verb);
			       //strcpy(aux_verb,"");
			     }
			   //strcat(ans_root,"vAru");
			   strcat(aux_verb,"vAru");
			 }
		       else
			{
			  strcpy(root,root_bak);
			  root[len-4] = '\0';
			  /* this function is used to find the derivational root */
get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    
//s1 to get the dictionary cat 
//	dict_lookup(root,DBM_FLAG,db_lex,lex_ar->word,sizeof_lex,sizeof(lex_ar[0]),strcmp,ans_ar);
//	pos1 = 0;
	    /* This function copies data ie Priority , pdgm,cat,word to the structure */
//	cp_to_struct(ans_ar,ans_table,&pos1);
//e1				
	  //get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
			  if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
			    {
			      if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
				{
				  strcat(aux_verb,"_");
		//strcat(ans_root,""); 
				  //strcat(ans_root,aux_verb);
			          //strcpy(aux_verb,"");
				}
			      //strcat(ans_root,"vAru");
			  	strcat(aux_verb,"vAru");
				// to get the derived root category, cat is attached with the root; NAGARAJ&PARAMESH_220813
			//	strcat(ans_root,"_");
			//	strcat(ans_root,ans_table[0].cat);
			    }
			}
		     }
		 }
	      }
	    strcpy(root,tmp_root);
	  }
       /* comparing vAlYlu with suffix_6 and paradigm with vAlYlu and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"vAlYlu") && !strcmp(pdgm,"vAlYlu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    root[len-4] = 'r';
	    root[len-3] = 'u';
	    root[len-2] = '\0';
	    len = strlen(root);
	    strcpy(root_bak,root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
	          {
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"vAlYlu");
		strcat(aux_verb,"vAlYlu");
	      }
	    else
	     {
	   strcpy(root,root_bak);
	   root[len-4] = '\0';
	   root[len-4] = 'r';
	   root[len-3] = 'u';
	   root[len-2] = '\0';
	   /* this function is used to find the derivational root */
get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	   //get_derived_rt(root,noun_Ena_ar->suffix,sizeof_noun_Ena,sizeof(noun_Ena_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	   if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
	     {
	       if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		 {
		   strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		   //strcat(ans_root,aux_verb);
		   //strcpy(aux_verb,"");
		 }
	       //strcat(ans_root,"Ena_vAlYlu");
	       strcat(aux_verb,"Ena_vAlYlu");
	     }
	   else
	     {
	       strcpy(root,root_bak);
	       root[len-4] = '\0';
	       root[len-4] = 'r';
	       root[len-3] = 'u';
	       root[len-2] = '\0';
		/* this function is used to find the derivational root */
get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	       //get_derived_rt(root,noun_lAMti_ar->suffix,sizeof_noun_lAMti,sizeof(noun_lAMti_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	       if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
		{
		  if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		    {
		      strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		      //strcat(ans_root,aux_verb);
		      //strcpy(aux_verb,"");
		    }
		  strcat(ans_root,"lAMti_vAlYlu");
		}
	      else
		{
		  strcpy(root,root_bak);
		  root[len-4] = '\0';
		  root[len-4] = 'r';
		  root[len-3] = 'u';
	          root[len-2] = '\0';
		  /* this function is used to find the derivational root */
get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		  //get_derived_rt(root,num_suff_info_ar->suffix,sizeof_num_suff,sizeof(num_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		  if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
		    {
		      if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
			{
			  strcat(aux_verb,"_");
		//strcat(ans_root,""); 
			  //strcat(ans_root,aux_verb);
			  //strcpy(aux_verb,"");
			}
		      strcat(ans_root,"vAlYlu");
		}
	      else
		{
		  strcpy(root,root_bak);
		  root[len-4] = '\0';
		  /* this function is used to find the derivational root */ 
get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
		  //get_derived_rt(root,adv_suff_info_ar->suffix,sizeof_adv_suff,sizeof(adv_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
		  if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
		    {
		      if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
			{
			   strcat(aux_verb,"_");
		//strcat(ans_root,"");
			   //strcat(ans_root,aux_verb);
			   //strcpy(aux_verb,"");
			}
		      strcat(ans_root,"vAlYlu");
		    }
		}
	      }
	     }
	   }
	 strcpy(root,tmp_root);
	}	
       /* comparing gAlYlu with suffix_6 and paradigm with vAlYlu and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"gAlYlu") && !strcmp(pdgm,"vAlYlu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    root[len-4] = 'd';
	    root[len-3] = 'u';
	    root[len-2] = '\0';
	    len = strlen(root);
	    strcpy(root_bak,root);
	    /* this function is used to find the derivational root */
get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    //get_derived_rt(root,noun_pron_ar->suffix,sizeof_noun_pron,sizeof(noun_pron_ar[0]),strcmp,DBM_FLAG,db_lex,"",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  { 
		    strcat(aux_verb,"_");
		//strcat(ans_root,"");
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		strcat(ans_root,"gAlYlu");
	      }
	    strcpy(root,tmp_root);
	  }

	/* Nouns derived from Adjs:

	/* Nouns derived from Adjs:
	SreRTa -> SreRTaM/SreRTurAlu/SreRTudu
	*/
	
       /* comparing M with suffix_1 and paradigm with puswakaM and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_1,"M") && !strcmp(pdgm,"puswakaM") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-1] = '\0'; /* drop last M */
	    /*  This function checks the word in the dictionary */
	    dict_lookup(root,DBM_FLAG,db_lex,lex_ar->word,sizeof_lex,sizeof(lex_ar[0]),strcmp,ans_ar);
	    pos1 = 0;
	   /* This function copies data ie Priority , pdgm,cat,word to the structure */
	    cp_to_struct(ans_ar,ans_table,&pos1);
	    loop1=0;
	    /* executes when ans_table.word is not null */
	    while(ans_table[loop1].word[0] !='\0')
	      {
              /* comparing root with ans_table.word  and ans_table.paradigm with SreRTa
	      and ans_root quals to null. executes only when all the conditions are satisfied  */
		if(!strcmp(ans_table[loop1].word,root) && !strcmp(ans_table[loop1].pdgm,"SreRTa"))
		  {
		     strcpy(ans_root,root);
		     goto LAST1;
		  }	
		 loop1++;
	      }  
	    LAST1:
	    if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb not equal to null */
		  {
		    strcat(aux_verb,"_");
		//strcat(ans_root,""); 
		    //strcat(ans_root,aux_verb);
		    //strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"adj_n");
		strcat(aux_verb,"");
	      }
	  }
       /* comparing urAlu with suffix_5 and paradigm with velu and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"urAlu") && !strcmp(pdgm,"velu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-5] = 'a'; /* drop last urAlu & add a to change it to adj */
	    root[len-4] = '\0';
	    /* This function checks the word in the dictionary */
	    dict_lookup(root,DBM_FLAG,db_lex,lex_ar->word,sizeof_lex,sizeof(lex_ar[0]),strcmp,ans_ar);
	    pos1 = 0;
	    /* This function copies data ie Priority , pdgm,cat,word to the structure */
	    cp_to_struct(ans_ar,ans_table,&pos1);
	    loop1=0;
	     /* executes when ans_table.word is not null */
	    while(ans_table[loop1].word[0] !='\0')
	      {
               /* comparing root with ans_table.word  and ans_table.paradigm with SreRTa */
     	       if(!strcmp(ans_table[loop1].word,root) && !strcmp(ans_table[loop1].pdgm,"SreRTa"))
	         {
	           strcpy(ans_root,root);
	           goto LAST2;
	         }
 	       loop1;
              }  
	    LAST2:
	if(ans_root[0] != '\0')  /* this function executes when ans_root not equal to null */
	  {
	    if(aux_verb[0] != '\0')/* executes when aux_verb not equal to null */
	      {
		strcat(aux_verb,"_");
		//strcat(ans_root,"");
		//strcat(ans_root,aux_verb);
		//strcpy(aux_verb,"");
	      }
	    //strcat(ans_root,"adj_f");
	    strcat(aux_verb,"");
	  }
	}
         /* comparing udu with suffix_3 and paradigm with snehiwudu and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_3,"udu") && !strcmp(pdgm,"snehiwudu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-3] = 'a'; /* drop last udu & add a to change it to adj */
	    root[len-2] = '\0';
	    /* This function checks the word in the dictionary */
	    dict_lookup(root,DBM_FLAG,db_lex,lex_ar->word,sizeof_lex,sizeof(lex_ar[0]),strcmp,ans_ar);
	    pos1 = 0;
	    /* This function copies data ie Priority , pdgm,cat,word to the structure */
	    cp_to_struct(ans_ar,ans_table,&pos1);
	    loop1=0;
	    /* executes when ans_table.word is not null */
	    while(ans_table[loop1].word[0] !='\0')
	      {
		/* comparing root with ans_table.word  and ans_table.paradigm with SreRTa */
		if(!strcmp(ans_table[loop1].word,root) && !strcmp(ans_table[loop1].pdgm,"SreRTa"))
		  {
		    strcpy(ans_root,root);
		    goto LAST3;
		  }	
		  loop1++;
	      }  
	    LAST3:
	    if(ans_root[0] != '\0') /* this function executes when ans_root not equal to null */
	      {
	       if(aux_verb[0] != '\0') /* this function executes when aux_verb not equal to null */ 
	  	{ 
		  strcat(aux_verb,"_");
		//strcat(ans_root,"");
		  //strcat(ans_root,aux_verb);
		  //strcpy(aux_verb,"");
		}
	       //strcat(ans_root,"adj_m");
	       strcat(aux_verb,"");
	      }
	 }
	else
	 if(DEBUG && derived_root)	/* executes when word and derived_root exists */
	   {
	     printf("%s\n",ans_root);	/* prints the final root after adjectives are added */
	     printf("%d\n",derived_root);/* prints the derived root */
	   }

   }
