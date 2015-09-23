/**
 * FILE Name :derived_noun1_heuristics.c
*/

/** derived_noun1_heuristics
 * This function depending on suffix below mentioned changes noun to noun
 *The arguments:
 * root of char type ,pdgm of char type, DBM_FLAG of int type ,db_lex of GDBM_LEX file type
 * ans_root of char type, aux_verb of char type
 * integer pointer
 * Return : void
 */

 /* HEADER FILES */

#include <gdbm.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "./headers/defn.h"
#include "./headers/struct.h"
#include "./headers/struct1.h"
#include "./common/analyser/morph_logger.h"


extern FILE *log_file;
#define FUNCTION "derived_noun1_heuristics()"

extern int DEBUG;		/* is used for checking existance of root */

extern int sizeof_yoVkka_suff;
/* suff_info structure contains info of suffix, add, pdgm, category, offset */
extern struct suff_info noun_yoVkka_suff_info_ar[];

/**
 * Prototypes of the functions in this file with a file scope
 */
extern void get_derived_rt();

void derived_noun1_heuristics(root,pdgm,DBM_FLAG,db_lex,ans_root,aux_verb)

   char root[SUFFWORDSIZE],pdgm[WORD_SIZE];	/* root of the word, paradigm */
   int DBM_FLAG;				/* global dictionary flag ,if 1 then dictionary
                                                is there */
   GDBM_FILE db_lex;				/* GNU database manager includes dbm and ndb
                                            compatability and db_flex is used for opening file */
   char ans_root[SUFFWORDSIZE];			/*  root after derivation */
   char aux_verb[SUFFWORDSIZE];		       /* auxilary verb */
     {
	char *program_name="derived_noun1_heuristics.c";
        PRINT_LOG(log_file," This function depending on suffix below mentioned changes noun to noun");

	int len,derived_root,pos1,loop1;		/* length of the root,derived root,  */
	char offset_aux_str[SUFFWORDSIZE];	      /* offset auxilary string */
	char suffix_4[5],suffix_5[6],suffix_6[7];	/* different suffixes */
 	char suffix_2[3],suffix_7[8],suffix_8[9];
	char suffix_9[10],suffix_10[11],suffix_11[12];
	char suffix_12[13],suffix_13[14];
	char ans_ar[SmallArray][LargeArray];				/* lexical word */
	char root_bak[SUFFWORDSIZE];		       /* root_bak is temporary root */

	len = strlen(root);				/* finding length of the word */
	strcpy(root_bak,root);
	/* after reqired conditions satisfied copying root _len to the sufffix */
	if(len>2)strcpy(suffix_2 , root+len-2); else strcpy(suffix_2,"");
	if(len>4)strcpy(suffix_4 , root+len-4); else strcpy(suffix_4,"");
	if(len>5)strcpy(suffix_5 , root+len-5); else strcpy(suffix_5,"");
	if(len>6)strcpy(suffix_6 , root+len-6); else strcpy(suffix_6,"");
	if(len>7)strcpy(suffix_7 , root+len-7); else strcpy(suffix_7,"");
	if(len>8)strcpy(suffix_8 , root+len-8); else strcpy(suffix_8,"");
	if(len>9)strcpy(suffix_9 , root+len-9); else strcpy(suffix_9,"");
	if(len>10)strcpy(suffix_10 , root+len-10); else strcpy(suffix_10,"");
	if(len>11)strcpy(suffix_11 , root+len-11); else strcpy(suffix_11,"");
	if(len>12)strcpy(suffix_12 , root+len-12); else strcpy(suffix_12,"");
	if(len>13)strcpy(suffix_13 , root+len-13); else strcpy(suffix_13,"");

	derived_root = 0;		/* intialising derived root to 0 */
	ans_root[0] = '\0';            /* intialising ans_root to null */
	/*lA case */
       /* comparing lA with suffix_2 and paradigm with ninna and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_2,"lA") && !strcmp(pdgm,"ninna") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-2] = '\0';
	    /* This function is used to  to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root not equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb not equal to null */
		  {
                    strcat(ans_root,"_"); 
                    strcat(ans_root,aux_verb);
                    strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_lA");
		strcat(aux_verb,"lA");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing mIxa with suffix_4 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"mIxa") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-4] = '\0';
		/* This function is used to  to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
                  { 
                     strcat(ans_root,"_"); 
                     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                  }
               // strcat(ans_root,"_mIxa");
                strcat(aux_verb,"mIxa");
              }
            strcpy(root,root_bak);
          }
       /* comparing aMwa with suffix_4 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"aMwa") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	     derived_root = 1;
	     len = strlen(root);
	     root[len-4] = '\0';
		/* This function is used to  to find derivational root */
	     get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	     if(ans_root[0] != '\0') /* executes when ans_root is equal to null */
	       {
		if(aux_verb[0] != '\0')   /* executes when aux_verb is equal to null */
                  { 
                    strcat(ans_root,"_"); 
                    strcat(ans_root,aux_verb); 
                    strcpy(aux_verb,"");
                  }
	        //strcat(ans_root,"_aMwa");
	        strcat(aux_verb,"aMwa");
	       }
	     strcpy(root,root_bak);
	   }
       /* comparing bEta with suffix_4 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"bEta") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	     derived_root = 1;
	     len = strlen(root);
	     root[len-4] = '\0';
		/* This function is used to  to find derivational root */
	     get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	     if(ans_root[0] != '\0') 	 /* executes when ans_root is equal to null */
	       {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
                  { 
		    strcat(ans_root,"_"); 
                    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
		  }
	        //strcat(ans_root,"_bEta");
	        strcat(aux_verb,"bEta");
	       }
	     strcpy(root,root_bak);
	  }
       /* comparing cotu with suffix_4 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"cotu") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-4] = '\0';
		/* This function is used to  to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
                  { 
                    strcat(ans_root,"_"); 
                    strcat(ans_root,aux_verb);
                    strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_cotu");
		strcat(aux_verb,"cotu");
	      }
	    strcpy(root,root_bak);
	  }
         /* comparing kAda with suffix_4 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"kAda") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-4] = '\0';
		/* This function is used to  to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
                     strcat(ans_root,"_"); 
		     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_kAda");
		strcat(aux_verb,"kAda");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing lona with suffix_4 and paradigm with ninna and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"lona") && !strcmp(pdgm,"ninna") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-4] = '\0';
		/* This function is used to  to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')	/* executes when ans_root is equal to null */ 
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
	 	    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_lona");
		strcat(aux_verb,"lona");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing pEna with suffix_4 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"pEna") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-4] = '\0';
		/* This function is used to  to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root is equal to null */
	     {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
                  {
                     strcat(ans_root,"_"); 
                     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                   }
		//strcat(ans_root,"_pEna");
		strcat(aux_verb,"pEna");
	     }
	   strcpy(root,root_bak);
	  }
       /* comparing sepu with suffix_4 and paradigm with munupu and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"sepu") && !strcmp(pdgm,"munupu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-4] = '\0';
		/* this function is used to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')  /* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
                  { 
                    strcat(ans_root,"_"); 
                    strcat(ans_root,aux_verb);
                    strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_sepu");
		strcat(aux_verb,"sepu");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing apudu with suffix_5 and paradigm with appudu and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"apudu") && !strcmp(pdgm,"appudu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-5] = '\0';
		/* this function is used to find derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') /* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
                  {
                     strcat(ans_root,"_"); 
                     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_apudu");
		strcat(aux_verb,"apudu");
	      } 
	    strcpy(root,root_bak);
	  }
       /* comparing kiMxa with suffix_5 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"kiMxa") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-5] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
                  {
                    strcat(ans_root,"_"); 
                    strcat(ans_root,aux_verb);
                    strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_kiMxa");
		strcat(aux_verb,"kiMxa");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing muMxu with suffix_5 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"muMxu") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-5] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') /* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
                    strcpy(aux_verb,"");
                  }
                //strcat(ans_root,"_muMxu");
                strcat(aux_verb,"muMxu");
              }
            strcpy(root,root_bak);
          }
       /* comparing ninna with suffix_5 and paradigm with ninna and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"ninna") && !strcmp(pdgm,"ninna") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-5] = '\0';
		/* this function is used to find the derivational root  */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
                  {
                     strcat(ans_root,"_"); 
                     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_ninna");
		strcat(aux_verb,"ninna");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing pakka with suffix_5 and paradigm with ninna and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_5,"pakka") && !strcmp(pdgm,"ninna") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-5] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
                  {
                    strcat(ans_root,"_"); 
                    strcat(ans_root,aux_verb);
                    strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_pakka");
		strcat(aux_verb,"pakka");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing aMwata with suffix_6 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"aMwata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
                  { 
                     strcat(ans_root,"_"); 
                     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_aMwata");
		strcat(aux_verb,"aMwata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing appudu with suffix_6 and paradigm with appudu and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"appudu") && !strcmp(pdgm,"appudu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb  is equal to null */
                  {
                     strcat(ans_root,"_"); 
                     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                  }
		//strcat(ans_root,"_appudu");
		strcat(aux_verb,"appudu");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing bayata with suffix_6 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"bayata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
	 	    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_bayata");
		strcat(aux_verb,"bayata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing civara with suffix_6 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"civara") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
	            strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_civara");
		strcat(aux_verb,"civara");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing eVxata with suffix_6 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"eVxata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  { 
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_eVxata");
		strcat(aux_verb,"eVxata");
	    }
	   strcpy(root,root_bak);
	  }
       /* comparing eVxuta with suffix_6 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"eVxuta") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
	   	    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_eVxuta");
		strcat(aux_verb,"eVxuta");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing kriMxa with suffix_6 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"kriMxa") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  { 
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_kriMxa");
		strcat(aux_verb,"kriMxa");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing lopala with suffix_6 and paradigm with ninna and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"lopala") && !strcmp(pdgm,"ninna") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  { 
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_lopala");
		strcat(aux_verb,"lopala");
	      }
	    strcpy(root,root_bak);
	  }	
       /* comparing lopata with suffix_6 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"lopata") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_lopata");
		strcat(aux_verb,"lopata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing mIxata with suffix_6 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"mIxata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_mIxata");
		strcat(aux_verb,"mIxata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing munupu with suffix_6 and paradigm with munupu and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"munupu") && !strcmp(pdgm,"munupu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  { 
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_munupu");
		strcat(aux_verb,"munupu");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing nuxuta with suffix_6 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"nuxuta") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_nuxuta");
		strcat(aux_verb,"nuxuta");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing varaku with suffix_6 and paradigm with munupu and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_6,"varaku") && !strcmp(pdgm,"munupu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-6] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_varaku");
		strcat(aux_verb,"varaku");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing avawala with suffix_7 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"avawala") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational toot */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  { 
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_avawala");
		strcat(aux_verb,"avawala");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing kiMxata with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"kiMxata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivatioanl root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		     strcat(ans_root,"_"); 
		     strcat(ans_root,aux_verb);
		     strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_kiMxata");
		strcat(aux_verb,"kiMxata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing moVxata with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"moVxata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_moVxata");
		strcat(aux_verb,"moVxata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing muMgita with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"muMgita") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		     strcat(ans_root,"_"); 
		     strcat(ans_root,aux_verb);
	             strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_muMgita");
		strcat(aux_verb,"muMgita");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing muMxata with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"muMxata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		     strcat(ans_root,"_"); 
		     strcat(ans_root,aux_verb);
		     strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_muMxata");
		strcat(aux_verb,"muMxata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing muMxuta with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"muMxuta") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0')	/* executes when ans_root is equal to null */ 
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  { 
	            strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_muMxuta");
		strcat(aux_verb,"muMxuta");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing noVsata with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"noVsata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
	      	  }
	        //strcat(ans_root,"_noVsata");
	        strcat(aux_verb,"noVsata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing pakkana with suffix_7 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"pakkana") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_");
		    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
	          }
	        //strcat(ans_root,"_pakkana");
	        strcat(aux_verb,"pakkana");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing veVnaka with suffix_7 and paradigm with ninna and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"veVnaka") && !strcmp(pdgm,"ninna") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
	  	if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
	        //strcat(ans_root,"_veVnaka");
	        strcat(aux_verb,"veVnaka");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing veVnuka with suffix_7 and paradigm with ninna and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"veVnuka") && !strcmp(pdgm,"ninna") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  {
		     strcat(ans_root,"_"); 
	             strcat(ans_root,aux_verb);
		     strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_veVnuka");
		strcat(aux_verb,"veVnuka");
	      }
	    strcpy(root,root_bak);
	  }		
       /* comparing warvAwa with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"warvAwa") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		     strcat(ans_root,"_"); 
		     strcat(ans_root,aux_verb);
		     strcpy(aux_verb,"");
		   }
		//strcat(ans_root,"_warvAwa");
		strcat(aux_verb,"warvAwa");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing xaggara with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"xaggara") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root  */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
		  }
	         //strcat(ans_root,"_xaggara");
	         strcat(aux_verb,"xaggara");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing xaggira with suffix_7 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_7,"xaggira") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-7] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */	
		  {
		     strcat(ans_root,"_"); 
		     strcat(ans_root,aux_verb);
		     strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_xaggira");
		strcat(aux_verb,"xaggira");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing kadapata with suffix_8 and paradigm with akkada and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"kadapata") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
		/* This function is used to find the dervational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
	        if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
                  {
                     strcat(ans_root,"_"); 
                     strcat(ans_root,aux_verb);
                     strcpy(aux_verb,"");
                  }
                //strcat(ans_root,"_kadapata");
                strcat(aux_verb,"kadapata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing padamata with suffix_8 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"padamata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') /* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  { 
		     strcat(ans_root,"_"); 
		     strcat(ans_root,aux_verb);
		     strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_padamata");
		strcat(aux_verb,"padamata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing waravAta with suffix_8 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"waravAwa") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_waravAwa");
		strcat(aux_verb,"waravAwa");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing waruvAwa with suffix_8 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"waruvAwa") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
	            strcpy(aux_verb,"");
		  }
	        //strcat(ans_root,"_waruvAwa");
	        strcat(aux_verb,"waruvAwa");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing kriMxata with suffix_8 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"kriMxata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')   /* executes when aux_verb is equal to null */
		  { 
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_kriMxata");
		strcat(aux_verb,"kriMxata");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing poVxxuta with suffix_8 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_8,"poVxxuta") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-8] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_poVxxuta");
		strcat(aux_verb,"poVxxuta");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing proVxxuta with suffix_9 and paradigm with moVxata and ans_root equals to null.
           executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_9,"proVxxuta") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-9] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0') /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_proVxxuta");
		strcat(aux_verb,"proVxxuta");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing cinnappudu with suffix_10 and paradigm with appudu and ans_root equals 
          to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_10,"cinnappudu") && !strcmp(pdgm,"appudu") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-10] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_cinnappudu");
		strcat(aux_verb,"cinnappudu");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing cittacivara with suffix_11 and paradigm with moVxata and ans_root equals 
	  to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_11,"cittacivara") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 	   {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-11] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_cittacivara");
		strcat(aux_verb,"cittacivara");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing eVttaeVxuta with suffix_11 and paradigm with moVxata and ans_root 
	  equals to null.  executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_11,"eVttaeVxuta") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 	   {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-11] = '\0';
		/* this function is used to find the derivational root */
	   get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
	        //strcat(ans_root,"_eVttaeVxuta");
	        strcat(aux_verb,"eVttaeVxuta");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing cuttupakkala with suffix_12 and paradigm with akkada and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_12,"cuttupakkala") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 	   {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-12] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_cuttupakkala");
		strcat(aux_verb,"cuttupakkala");
	       }
	     strcpy(root,root_bak);
	   }
        /* comparing cuttuprakkala with suffix_13 and paradigm with akkada and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_13,"cuttuprakkala") && !strcmp(pdgm,"akkada") && (ans_root[0] == '\0')) 	   {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-13] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')  /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
	            strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_cuttuprakkala");
		strcat(aux_verb,"cuttuprakkala");
	      }
	    strcpy(root,root_bak);
	  }
       /* comparing moVttamoVxata with suffix_13 and paradigm with moVxata and ans_root 
		equals to null. executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_13,"moVttamoVxata") && !strcmp(pdgm,"moVxata") && (ans_root[0] == '\0')) 
	  {
	    derived_root = 1;
	    len = strlen(root);
	    root[len-13] = '\0';
		/* this function is used to find the derivational root */
	    get_derived_rt(root,noun_yoVkka_suff_info_ar->suffix,sizeof_yoVkka_suff,sizeof(noun_yoVkka_suff_info_ar[0]),strcmp,DBM_FLAG,db_lex,"noun",ans_root,aux_verb,offset_aux_str);
	    if(ans_root[0] != '\0') 	/* executes when ans_root is equal to null */
	      {
		if(aux_verb[0] != '\0')	 /* executes when aux_verb is equal to null */
		  {
		    strcat(ans_root,"_"); 
		    strcat(ans_root,aux_verb);
		    strcpy(aux_verb,"");
		  }
		//strcat(ans_root,"_moVttamoVxata");
		strcat(aux_verb,"moVttamoVxata");
	      }
	    strcpy(root,root_bak);
	  }
	if(DEBUG && derived_root)	/* executes when word and derived_root exists */
	  {
	    printf("%s\n",ans_root);	/* prints the final root after adjectives are added */
	    printf("%d\n",derived_root); /* prints the derived root */
	  }

    }
