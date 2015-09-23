
/* HEADERS  */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>
#include <gdbm.h>


#include"sandhi_logger.h"
#include"sandhi_logger.c"
#include"pcre.h"
#define OVECCOUNT 30
#define FUNCTION "main()"
#define LINE_LENGTH 150
#define MATCH_LENGTH 150    //modified from 30 to 150
#define REPLACE_LENGTH 150  //modified from 30 to 150
#define MORPH_SIZE 90
#define WORD_SIZE 60

#include "headers/struct1.h"
#include "headers/glbl.h"
#include "headers/defn.h"
#include "headers/struct.h"

/* Global Variables */
int DEBUG;
int DEBUG_NEW;
int FINDONCE;
int FOR_USER;
int DEFAULT_PARADIGM;
int ALWAYS_DEFAULT_PARADIGM;
int WORD_NUM;
int SENT_NUM;
int LINE_NUM_FLAG;
int UWORD_DICT;
int HORI_OUTPUT;
int YES_NO;
int KRIYAMULA;
int direct_ans_flag;
int INFLTNL;

int sizeof_prop_noun_lex;
struct lex_info prop_noun_lex_ar[1000];

extern void *my_fatal();


extern void fgetword();
extern void fun_close();
extern void chk_uword_dict();
extern void resufun();
extern void resufun_hori();
extern void fun_morph();
extern char fun_read();
extern int snt_num();
extern int end_mark();
extern void print_snt_num();
extern void sandhi_split();

int main(argc,argv)
int argc;
char *argv[];
{
FILE *fpt1,*fp_pdgm,*fp_prop_noun_dict,*fp_uword_dict;
GDBM_FILE db_dict,db_suff,db_uword;

char morph[Morphsize];
char fpath[300],fname[300],fpath_dict[300];
char upath[300],uname[300];
char line[100];

int i,swit1,c;
struct ans_struct ans_ar[20];
char uword_ans[200];

int sizeof_uword,pipe_flag;
struct uword_dict uword_ar[10000];

swit1 = 1;
DEBUG = 0;
DEBUG_NEW = 0;
FINDONCE =0;
FOR_USER =0;
DEFAULT_PARADIGM =0;
ALWAYS_DEFAULT_PARADIGM =0;
WORD_NUM = 0;
SENT_NUM = 0;
LINE_NUM_FLAG = 0;
UWORD_DICT = 0;
YES_NO = 0;
KRIYAMULA = 0;

if (argc < 3 )
{
printf("Usage morph.out <pdgm_offset_info> <uword_dict_path> <dict_path> [UFPADLY]\n");
exit(0);
}
if(argc > 3)
{
/** OPTION 'U' CREATES A FILE UWORD WHICH CAPTURES THE WORDS BEYOND
                    THE SCOPE OF THE MORPH   ****************/
        if (index(argv[4],'U') )
                swit1 = 0;
/* option 'F' is used for user friendly output. */
	if(index(argv[4],'F') )
		FOR_USER = 1;
/* Choose the default paradigm , if entry is not found in dict */
	if(index(argv[4],'P') )
		DEFAULT_PARADIGM = 1;
/* Always choose the default paradigm ,even though entry is found in dict */
	if(index(argv[4],'A') )
		ALWAYS_DEFAULT_PARADIGM = 1;
/* dbm files are being used. */
        if(index(argv[4],'D') )
                DBM_FLAG = 1;
/*  Line numbers are being provided by some other program*/
        if(index(argv[4],'L') )
                LINE_NUM_FLAG = 1;
        if(index(argv[4],'H') )
                HORI_OUTPUT = 1;
/* Check the Uword dict */
        if(index(argv[4],'W') )
                UWORD_DICT = 1;
/* set the debug flag */
        if(index(argv[4],'G') )
                DEBUG = 1;
/* answers yes if morph recognises, else answers no */
        if(index(argv[4],'Y') )
                YES_NO = 1;
/* analyses kriyamulas also */
        if(index(argv[4],'K') )
                KRIYAMULA = 1;

}
if(argc > 4) 
    DEBUG_NEW = argv[4][0]-'0';
 if (swit1 == 0)
        fpt1 = fopen("uword","w");
/*uword contains words which are beyond the scope of the morph**/ 

strcpy(fpath,argv[1]);
strcpy(upath,argv[2]);
strcpy(fpath_dict,argv[3]);

strcpy(fname,fpath);
strcat(fname,"/pdgm_offset_info");
if((fp_pdgm=fopen(fname,"r"))==NULL)
    {
    printf("Error in %s opening\n",fname);
    exit(0);
    }

strcpy(uname,upath);
strcat(uname,"/prop_noun_lex.dic");
if((fp_prop_noun_dict=fopen(uname,"r"))==NULL)
    {
    printf("Error in %s opening\n",uname);
    exit(0);
    }

i = 0;
fgetword(fp_prop_noun_dict,line,',');
while(strcmp(line,""))
{
strcpy(prop_noun_lex_ar[i].word,line);
fgetword(fp_prop_noun_dict,line,',');
strcpy(prop_noun_lex_ar[i].pdgm,line);
fgetword(fp_prop_noun_dict,line,',');
strcpy(prop_noun_lex_ar[i].cat,line);
fgetword(fp_prop_noun_dict,line,',');
i++;
}
sizeof_prop_noun_lex = i;

strcpy(uname,upath);
strcat(uname,"/uword.dic");
/*
printf("%s\n",uname);
*/
if((fp_uword_dict=fopen(uname,"r"))==NULL)
    {
    printf("Error in %s opening\n",uname);
    exit(0);
    }

i = 0;
fgetword(fp_uword_dict,line,' ');
while(strcmp(line,""))
{
strcpy(uword_ar[i].sl_word,line);
fgetword(fp_uword_dict,line,'\n');
strcpy(uword_ar[i].tl_word,line);
fgetword(fp_uword_dict,line,' ');
i++;
}
sizeof_uword = i;

if(DBM_FLAG != 1)
 {
printf("\tCurrent version supports only dbm files for dictionaries.				 Please run with 'D' option\n Exiting ...\n"); 
exit(1);
}
if(DBM_FLAG)
{
strcpy(fname,fpath_dict);
db_dict = gdbm_open(fname,512,GDBM_READER,0666,my_fatal());

strcpy(fname,fpath);
strcat(fname,"/suff");
db_suff = gdbm_open(fname,512,GDBM_READER,0666,my_fatal());

strcpy(uname,upath);
strcat(uname,"/uword");
db_uword = gdbm_open(uname,512,GDBM_READER,0666,my_fatal());

}

SENT_NUM++;
if(LINE_NUM_FLAG == 0)
if((!HORI_OUTPUT) && !YES_NO)
printf("# s%d\n",SENT_NUM);
c = getchar(); 
ungetc(c,stdin);

 while (1)
  {
        if(c == EOF)
	  {
          fun_close(fpt1,fp_pdgm,swit1,DBM_FLAG,db_dict,db_suff);
          exit(0);
	  }
        else 
           {
            c=fun_read(morph);
            if(!strcmp(morph,"NW"))
               {
                fun_close(fpt1,fp_pdgm,swit1,DBM_FLAG,db_dict,db_suff);
                exit(0);
               }
            if (strcmp(morph,"\0"))
         	{
                FINDONCE = 0;
                if((LINE_NUM_FLAG && snt_num(morph)) && (!HORI_OUTPUT) && (!YES_NO)) print_snt_num(morph);
		else 
                {
                WORD_NUM++;
                if(FOR_USER && !HORI_OUTPUT)
                printf("@input_word@\n word_num: w%d\n",WORD_NUM);
                else
                if(!HORI_OUTPUT && !YES_NO)
                printf("input_word\nw%d\n",WORD_NUM);
		if((morph[0] == '@') || (LINE_NUM_FLAG && end_mark(morph)))
		{
                if(!HORI_OUTPUT)
		printf("AVY\n%s\n",morph);/* print the marked words as they are */
                else
		printf("%s",morph);/* print the marked words as they are */
		}
		else 
                  {
                  chk_uword_dict(morph,uword_ar->sl_word,sizeof_uword,sizeof(uword_ar[0]),strcmp,uword_ans,DBM_FLAG,db_uword);
                  if((uword_ans[0] != '\0') && (UWORD_DICT))
                     if((!HORI_OUTPUT) && !YES_NO)
		     printf("AVY\n%s\n",uword_ans);
                     else if (YES_NO)
		          printf("%s",morph);
                          else
		          printf("%s",uword_ans);
                  else
		    {
        	     fun_morph(morph,fp_pdgm,DBM_FLAG,db_dict,db_suff,ans_ar);
                     if(ans_ar[0].offset == -2) 
                       {
                       if(YES_NO) printf("%s<ajFAwa>",morph);
                       if (swit1 == 0)
                            fprintf(fpt1,"w%d %s\n",WORD_NUM,morph);
                       }
                     else
                     {
                     if(YES_NO) printf("%s",morph);
                     else{
                     i=0;
			pipe_flag=0;
                     while(ans_ar[i].offset !=-2)
                     {
			if(pipe_flag) printf("/"); pipe_flag=1;
		      if(ans_ar[i].offset == -1)
                         if(!HORI_OUTPUT)
		         printf("Avy\n%s\n",ans_ar[i].root);
                         else
		         printf("%s{Avy}",ans_ar[i].root);
		      else
		         if(ans_ar[i].offset == -3) /* Case of Numeral */
                            if(!HORI_OUTPUT)
		            printf("Avy\n%s\n",ans_ar[i].root);
                            else
		            printf("%s",ans_ar[i].root);
		         else
                           if(HORI_OUTPUT)
                           resufun_hori(ans_ar[i].root,ans_ar[i].pdgm,ans_ar[i].offset,ans_ar[i].aux_verb);
                           else
                           resufun(ans_ar[i].root,ans_ar[i].pdgm,ans_ar[i].offset,ans_ar[i].aux_verb);
                         strcpy(ans_ar[i].root,"");
                         ans_ar[i].offset = 0;
                         strcpy(ans_ar[i].aux_verb,"");
                         strcpy(ans_ar[i].pdgm,"");
                         i++;
                       //  if(HORI_OUTPUT) printf("/");
                      } 
                     } 
                    } 
                   }
                }
                }
             if((c=='.') || (c == '?'))
                 {
	          WORD_NUM++;
                  if(!HORI_OUTPUT && !YES_NO)
  		  printf("input_word\nw%d\nAVY\n%c\n",WORD_NUM,c);
                  else if(!YES_NO) printf("%c\n",c);
                       else printf("%c",c); 
	          SENT_NUM++;
                  c=getchar();
                  if((c!=EOF) && (LINE_NUM_FLAG ==0))
                  if(!HORI_OUTPUT && !YES_NO)
  		  printf("# s%d\n",SENT_NUM);

         	}
             }
       }
  if(HORI_OUTPUT) printf("\n");
  }

}
