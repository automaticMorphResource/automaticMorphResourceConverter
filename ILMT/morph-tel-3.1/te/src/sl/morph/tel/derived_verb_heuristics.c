/**
 * FILE Name :derived_verb_heuristics.c
*/

/** derived_verb_heuristics
 * This function depending on suffix below mentioned changes verb to noun
 * The arguments:
 * root of char type ,pdgm of char type, DBM_FLAG of int type ,db of GDBM_db file type
 * answer of char type
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
#define FUNCTION "derived_verb_heuristics()"

/**
 * Prototypes of the functions in this file with a file scope
 */

extern void dict_lookup();
extern int DEBUG;		/* is used for checking existance of root */
void my_grep();

/* suff_info structure contains info of suffix, add, pdgm, category, offset */

extern struct lex_info lex_ar[];

extern int sizeof_lex;

void  derived_verb_heuristics(root,pdgm,DBM_FLAG,db,answer)

char root[SUFFWORDSIZE],pdgm[WORD_SIZE];	/* root of the word, paradigm */
int DBM_FLAG;					/* global dictionary flag ,if 1 then
                                               dictionary is there */
GDBM_FILE db;					/* GNU database manager includes dbm and ndb
                                   compatability and db is used for opening file */
char answer[SUFFWORDSIZE];		/* root after the derivation */
    {
	char *program_name="derived_verb_heuristics.c";
        PRINT_LOG(log_file,"this function depending on suffix below mentioned changes verb to noun")
	int len,derived_root;	  /* length of the root, derived root */
         /* different suffixes */
	char suffix_2[3],suffix_3[4],suffix_4[5],suffix_5[6],suffix_6[7];
	char ans_root[SUFFWORDSIZE];	/* final root answer */

	len = strlen(root);   		/* finding length of the root */
	
	if(len>6) strcpy(suffix_6 , root+len-6); else strcpy(suffix_6,"");
	if(len>5) strcpy(suffix_5 , root+len-5); else strcpy(suffix_5,"");
	if(len>4) strcpy(suffix_4 , root+len-4); else strcpy(suffix_4,"");
	if(len>3) strcpy(suffix_3 , root+len-3); else strcpy(suffix_3,"");
	if(len>2) strcpy(suffix_2 , root+len-2); else strcpy(suffix_2,"");

	derived_root = 0;	/* intialising derived_root to 0 */
	ans_root[0] = '\0';	/* intialising ans_root to null */
	answer[0] = '\0';	/* intialising answer to null */
	/* comparing iMcu with suffix_4 and paradigm with cUpiMcu
		 executes only when all the conditions are satisfied  */
	if(!strcmp(suffix_4,"iMcu") && !strcmp(pdgm,"cUpiMcu")) 
	  {
	    derived_root = 1;
	    strncpy(ans_root,root,len-4);
	    ans_root[len-4] = '\0';
	    if(ans_root[0] != '\0') 	/* executes when ans_root not equal to null */
	      {
		my_grep(ans_root,DBM_FLAG,db,answer);
		if(answer[0] != '\0')	 /* executes when answer not equal to null */
		   strcat(answer,"?_iMcu");
	      }
	  }
	/* comparing padu with suffix_4 and paradigm with padu
		 executes only when all the conditions are satisfied  */


	if(!strcmp(suffix_4,"padu") && !strcmp(pdgm,"padu")) 
	  {
	     derived_root = 1;
	     strncpy(ans_root,root,len-4);
	     ans_root[len-4] = '\0';
	     if(ans_root[0] != '\0') /* executes when ans_root not equal to null */
		{
		  my_grep(ans_root,DBM_FLAG,db,answer);
		  if(answer[0] != '\0') 
		    strcat(answer,"?_padu");
	        }
	  }
	if(!strcmp(suffix_4,"avvu") && !strcmp(pdgm,"avvu")) 
	  {
	    derived_root = 1;
	    strncpy(ans_root,root,len-4);
	    ans_root[len-4] = '\0';
	    if(ans_root[0] != '\0') 
	      {
		my_grep(ans_root,DBM_FLAG,db,answer);
		if(answer[0] != '\0') 
		  strcat(answer,"?_avvu");
	      }
	  }
	if(!strcmp(suffix_6,"ceVyyi") && !strcmp(pdgm,"ceVyyi")) 
	  {
	    derived_root = 1;
	    strncpy(ans_root,root,len-6);
	    ans_root[len-6] = '\0';
	    if(ans_root[0] != '\0') 
	      {
	 	my_grep(ans_root,DBM_FLAG,db,answer);
		if(answer[0] != '\0')
		  strcat(answer,"?_ceVyyi");
	      }
	  }
	if(!strcmp(suffix_6,"veVyyi") && !strcmp(pdgm,"ceVyyi")) 
	 {
	   derived_root = 1;
	   strncpy(ans_root,root,len-6);
	   ans_root[len-6] = '\0';
	   if(ans_root[0] != '\0') 
	     {
		my_grep(ans_root,DBM_FLAG,db,answer);
		if(answer[0] != '\0') 
		  strcat(answer,"?_veVyyi");
	     }
	}
	if(!strcmp(suffix_6,"paracu") && !strcmp(pdgm,"pannu")) 
	  {
	   derived_root = 1;
	   strncpy(ans_root,root,len-6);
	   ans_root[len-6] = '\0';
	   if(ans_root[0] != '\0') 
	    {
		my_grep(ans_root,DBM_FLAG,db,answer);
	        if(answer[0] != '\0')
		  strcat(answer,"?_paracu");
	    }
	  }
	if(!strcmp(suffix_4,"lAdu") && !strcmp(pdgm,"Adu")) 
	  {
	    derived_root = 1;
	    strncpy(ans_root,root,len-4);
	    ans_root[len-4] = '\0';
	    if(ans_root[0] != '\0') 
	     {
	       my_grep(ans_root,DBM_FLAG,db,answer);
	       if(answer[0] != '\0') 
		strcat(answer,"?_lAdu");
	     }
	  }
	if(!strcmp(suffix_6,"peVttu") && !strcmp(pdgm,"peVttu")) 
	  {
	    derived_root = 1;
	    strncpy(ans_root,root,len-6);
	    ans_root[len-6] = '\0';
	    if(ans_root[0] != '\0') 
		{
		  my_grep(ans_root,DBM_FLAG,db,answer);
	          if(answer[0] != '\0') 
		    strcat(answer,"?_peVttu");
	        }
	  }

	if(DEBUG && derived_root)
	 {
	   printf("%s\n",ans_root);
	   printf("%d\n",derived_root);
	 }
    }

void my_grep(ans_root,DBM_FLAG,db,answer)
   char ans_root[SUFFWORDSIZE],answer[SUFFWORDSIZE];
   int DBM_FLAG;
   GDBM_FILE db;
   {
	char tmp[SUFFWORDSIZE];
	int loop1,FLAG;
	char ans_ar[SmallArray][LargeArray];
	strcpy(answer,"");
	strcpy(tmp,ans_root);
	FLAG = 0;
	for(loop1=0;((loop1<5) && (!FLAG));loop1++)
	 {
	  strcpy(ans_root,tmp);
	  if(loop1==1)
	    {
		strcat(ans_root,"u");
	    }
	else if(loop1==2)
	 {
	   strcat(ans_root,"i");
	 }
	else if(loop1==3)
	 {
	   strcat(ans_root,"a");
	 }
	else if(loop1==4) 
	 {
	   strcat(ans_root,"eV");
	 }
	/*This function checks the word in the dictionary */
	dict_lookup(ans_root,DBM_FLAG,db,lex_ar->word,sizeof_lex,sizeof(lex_ar[0]),strcmp,ans_ar);
	if(ans_ar[0][0] != '\0')
	  {
	/*
	printf("answer = %s\n",ans_ar[0]);
	*/
	strcpy(answer,ans_ar[0]);
	FLAG = 1;
	  }
	 }
	/*
	printf("answer = %s\n",answer);
	*/
    }
