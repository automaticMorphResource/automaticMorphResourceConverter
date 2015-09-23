/**
 * File Name : main_telugu.c
 */


/** Function : main
 * This function is the main function where we take input word and actual flow of each function
 * from begining to ending is defined here
 * It takes arguments: argv of char type and argc
 * of integer type
 * Return : int
 */

/* HEADERS  */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <gdbm.h>

#include "./headers/struct1.h"
#include "./headers/glbl.h"
#include "./headers/defn.h"
#include "./headers/struct.h"
#include "./common/analyser/morph_logger.h"
#include "c_api_v2/c_api_v2.h"
//#include "./new_ss.c"


/* Global Variables */
int DEBUG;		/* checks for the existance of word */
int DEBUG_NEW;		
int FINDONCE;		/* indicates existance of word in the dictionary */
int FOR_USER;		/* for user friendly output */
int DEFAULT_PARADIGM;	/* for choosing default paradigm if it is not present in the dict */
int ALWAYS_DEFAULT_PARADIGM;/* always choose the default paradigm , even though entry is
	       found in the dict */
int WORD_NUM;		/* for assigning word number */
int SENT_NUM;		/* for assigning sentence number */
int LINE_NUM_FLAG;	/* checks for line number is there or not */
int UWORD_DICT;		/* checks for uword dict is there or not */
int HORI_OUTPUT;	/* checks for Horizontal output  */
int YES_NO;		/* answer yes if word is present in dict */
int KRIYAMULA;
int direct_ans_flag;
int INFLTNL;

int sizeof_prop_noun_lex;	/* size of proper noun lexical information */
struct lex_info prop_noun_lex_ar[Lexsize]; /* lexical information structure containig info of
	      root,paradigm,offset,category and priority */

char *program_name="main.c";
char *log_filepath="morph.log";
char *logmsg;
char log_messg;
FILE *log_file;

/**
 * Prototypes of the functions in this file with a file scope
 */
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
//extern void fun_tam();
extern void tam_split();
//extern void aux_clt_split();
extern void lcat_verify();
extern void verb_lcat_split();
extern void adj_split();
int itr1=0;
node *data_str;
struct LR_word *spw;
#define FUNCTION "main()"
void read_rules(char *rule_file_name,struct sandhi_rule_pool *rule_pool);
	void
read_rules (char *rule_file_name, struct sandhi_rule_pool *rule_pool)
{
	FILE *fp;
	//array size is changed by Paramesh
//	char rls[700][100], ss[100];
	char rls[1000][200], ss[100];
	int size_of_rls = 0, i, j;
	char san[15][50];
	char temp[15][50];

	fp = fopen (rule_file_name, "r");
	if (fp == NULL)
	{
//		printf ("File cannot be opened\n");
		exit (0);
	}

	/* Read The file line by line and  putting into an array */

	while ((fgets (ss, 100, fp)) != NULL)
	{
		ss[strlen (ss) - 2] = '\0';
		strcpy (rls[size_of_rls], ss);
		size_of_rls++;
	}
	fclose (fp);
	//printf ("The size of rules is 1-- %d\n",size_of_rls);
	size_of_rls = size_of_rls - 1;
	//printf ("The size of rules is 2-- %d\n",size_of_rls);
	rule_pool->no_of_rules = size_of_rls;
	rule_pool->rule =
		(struct sandhi_rule *) malloc (sizeof (struct sandhi_rule) *
				(size_of_rls - 3));


	for (j = 3; j < size_of_rls; j++)
	{
		for (i = 0; i < 10; i++)
		{
			strcpy (san[i], "\0");
		}			// this is for delete previous value  

		      strcpy (temp, rls[j]);
		split_arr (rls[j], '\t', san);

		strcpy (rule_pool->rule[j - 3].rl_no, san[0]);
		strcpy (rule_pool->rule[j - 3].pat, san[1]);
		strcpy (rule_pool->rule[j - 3].br_pt, san[2]);
		strcpy (rule_pool->rule[j - 3].lft_dlt, san[3]);
		strcpy (rule_pool->rule[j - 3].lft_add, san[4]);
		strcpy (rule_pool->rule[j - 3].rt_dlt, san[5]);
		strcpy (rule_pool->rule[j - 3].rt_add, san[6]);
		strcpy (rule_pool->rule[j - 3].lft_mo_call, san[7]);
		strcpy (rule_pool->rule[j - 3].rt_mo_call, san[8]);
		strcpy (rule_pool->rule[j - 3].lft_cond, san[9]);
		strcpy (rule_pool->rule[j - 3].rt_cond, san[10]);



		if (strcmp (rule_pool->rule[j - 3].lft_add, "0") == 0)
			strcpy (rule_pool->rule[j - 3].lft_add, "\0");
		if (strcmp (rule_pool->rule[j - 3].rt_add, "0") == 0)
			strcpy (rule_pool->rule[j - 3].rt_add, "\0");
		if (strcmp (rule_pool->rule[j - 3].lft_cond, "0") == 0)
			strcpy (rule_pool->rule[j - 3].lft_cond, "\0");
		if (strcmp (rule_pool->rule[j - 3].rt_cond, "0") == 0)
			strcpy (rule_pool->rule[j - 3].rt_cond, "\0");
	}

}
//#define FUNCTION "main()"

int main(argc,argv)
	int argc;
	char *argv[];
{
	/* file pointers for pdgm,propernoun dict,uword dict */		
	FILE *fpt1,*fp_pdgm,*fp_prop_noun_dict,*fp_uword_dict;
	/* GNU database manager includes dbm and ndb compatability and db_dict,db_suff,db_uword
	   are used for opening dictionary , suff and uword files respectively */
	GDBM_FILE db_dict,db_suff,db_uword;

	char morph[Morphsize];	/* morph word */
	/* filepath , filename ,filepath of dict */
	char fpath[BigArray],fname[BigArray],fpath_dict[BigArray];
	char upath[BigArray],uname[BigArray];	/* uword path , uword file name */
	char line[SmallArray];		 /* input line */

	/* loop1 for reading characters of the input word ,swit1 for switch case and
	   'c' for reads the next character from stream and returns it as an
	   unsigned char cast to an int,*/
	int loop1,swit1,c,k,flag_uword,first=1,pipe_flag;
	/* ans_Struct contains lexical info of root , offset, auxilary verb,paradigm.
	   an object ans_ar is defined for ans_struct */
	
struct ans_struct ans_ar[BigArray],ans_ar_left[BigArray],ans_ar_right[BigArray];
	int no_of_ans, no_of_ans_left,no_of_ans_right;
	char uword_ans[BigArray];	/* uword answer after finding morph output */  
	char tam_variation[SmallArray][SmallArray], tam_variation1[SmallArray][SmallArray], lcat_variation[SmallArray][SmallArray], verb_lcat_variation[SmallArray][SmallArray]; 

	char *pdm,*uword,*dict;/*pdm for --pdgmfilepath argument , 
	 uword for --uwordpath argument,
	 dict for --dictfilepath argument*/
	extern char *optarg;
	char *j,*o,iname[BigArray],oname[BigArray];
	extern FILE *stdin;
	extern FILE *stdout;
	char root[BigArray], cat[BigArray], 
	     g[BigArray],n[BigArray],
	     p[BigArray], kase[BigArray],
	     cm[BigArray], tam[BigArray] ;
	char feature_str[BigArray];
	char feature_str_lr[BigArray];

	char cm_variation[BigArray];
//	struct ans_struct ans_ar[2];


	int sizeof_uword;				/* size of uword */
	struct uword_dict uword_ar[Uwordlen];	/* object for uword structure */

	char w;
	int word_count=0;
	int word_count1=0;
	int flag_unk =0;
	/* Intialising variables*/
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
	logmsg = (char*) malloc(sizeof(char)*500);
	//logmsg = (char*) malloc(sizeof(char)*256);
	memset(logmsg, '\0', 500);
	//memset(logmsg, '\0', 256);

	/* checking whether morph.log file can be opened or not */
	if ((log_file = fopen(log_filepath, "w")) == NULL)
	{
		perror("morph.log");
		//exit(-1);
	}
	sprintf(logmsg, "Entering into main program"); \
		PRINT_LOG(log_file, logmsg);

	while (1)
	{
		static struct option long_options[] =
		{
	{"pdgmfilepath",required_argument, 0, 'p'},
	{"uwordpath",required_argument, 0, 'u'},
	{"dictfilepath",required_argument, 0, 'd'},
	{"in",required_argument, 0, 'j'},
	{"out",required_argument, 0, 'o'},
	{0, 0, 0, 0}
		};
		int option_index=0;

		k = getopt_long(argc, argv, "pudioUFPADLHWGY",
	long_options , &option_index);
		if (k==-1)
	break;
		switch(k) {
	/* OPTION 'p' pdgm path    */
	case 'p':
	pdm=optarg;
	break;
	/*option u for uword dict path*/
	case 'u':
	uword=optarg;
	break;
	/* option d for dictpath*/
	case 'd':
	dict=optarg;
	break;
	/*option i for input file*/
	case 'j':
	j=optarg;
	strcpy(iname,j);
	// stdin=fopen(iname,"r");
	break;
	/* option o for output file*/
	case 'o':
	o=optarg;
	strcpy(oname,o);
	// stdout=fopen(oname,"w");
	break;

	/** OPTION 'U' CREATES A FILE UWORD WHICH CAPTURES THE WORDS BEYOND
	  THE SCOPE OF THE MORPH   ****************/
	case 'U':
	swit1 = 0;
	break;
	/* option 'F' is used for user friendly output. */
	case 'F':
	FOR_USER = 1;
	break;
	/* Choose the default paradigm , if entry is not found in dict */
	case'P':
	DEFAULT_PARADIGM = 1;
	break;
	/* Always choose the default paradigm ,even though entry is found in dict */
	case 'A':
	ALWAYS_DEFAULT_PARADIGM = 1;
	break;
	/* dbm files are being used. */
	case 'D':
	DBM_FLAG = 1;
	break;
	/*  Line numbers are being provided by some other program*/
	case 'L':
	LINE_NUM_FLAG = 1;
	case 'H':
	HORI_OUTPUT = 1;
	break;
	/* Check the Uword dict */
	case 'W':
	UWORD_DICT = 1;
	break;
	case 'G':
	DEBUG = 1;
	break;
	/* answers yes if morph recognises, else answers no */
	case 'Y':
	YES_NO = 1;
	break;
	default:
	printf("**************USAGE***************\n\t --pdgmpath <pdgm_offset_info> --uwordpath <uword_dict_path> --dictpath <dict_path> -ULDWH");
	break;
		}
	}
	sprintf(logmsg, "INFO: Entering Aplication with inputfile=%s, outputfile=%s", iname, oname); PRINT_LOG (log_file, logmsg);

	if(argc > 4) 
		DEBUG_NEW = argv[4][0]-'0';
	//if (swit1 == 0)
		//fpt1 = fopen("uword","w");
	/*uword contains words which are beyond the scope of the morph**/ 

	strcpy(fpath,pdm);
	strcpy(upath,dict);
	strcpy(fpath_dict,uword);

	strcpy(fname,fpath);
	strcat(fname,"/pdgm_offset_info");
sprintf(logmsg, "INFO: lova raju  with dbmname=%s, path=%s", fname, fpath); PRINT_LOG (log_file, logmsg);
	/* checks for paradigm file can be opened or not */
	if((fp_pdgm=fopen(fname,"r"))==NULL)	  
	{
		printf("Error in %s opening\n",fname);
		exit(0);
	}

	strcpy(uname,upath);
	strcat(uname,"/prop_noun_lex.dic");
	/* checks for proper noun dict file can be opened or not */
	if((fp_prop_noun_dict=fopen(uname,"r"))==NULL)
	{
		printf("Error in %s opening\n",uname);
		exit(0);
	}

	loop1 = 0;
	fgetword(fp_prop_noun_dict,line,',');
	while(strcmp(line,""))
	{
		strcpy(prop_noun_lex_ar[loop1].word,line);
		fgetword(fp_prop_noun_dict,line,',');
		strcpy(prop_noun_lex_ar[loop1].pdgm,line);
		fgetword(fp_prop_noun_dict,line,',');
		strcpy(prop_noun_lex_ar[loop1].cat,line);
		fgetword(fp_prop_noun_dict,line,',');
		loop1++;
	}
	sizeof_prop_noun_lex = loop1;

	strcpy(uname,upath);
	strcat(uname,"/uword.dic");
	/*	printf("%s\n",uname);	*/
	/* checks for uword dictionary file can be opened or not */
	if((fp_uword_dict=fopen(uname,"r"))==NULL)
	{
		printf("Error in %s opening\n",uname);
		exit(0);
	}

	loop1 = 0;
	fgetword(fp_uword_dict,line,' ');
	while(strcmp(line,""))
	{
		strcpy(uword_ar[loop1].sl_word,line);
		fgetword(fp_uword_dict,line,'\n');
		strcpy(uword_ar[loop1].tl_word,line);
		fgetword(fp_uword_dict,line,' ');
		loop1++;
	}
	sizeof_uword = loop1;

	if(DBM_FLAG != 1)
	{
		printf("\tCurrent version supports only dbm files for dictionaries.                          		 Please run with 'D' option\n Exiting ...\n"); 
		exit(1);
	}	
	if(DBM_FLAG)
	{
		strcpy(fname,fpath_dict);
sprintf(logmsg, "INFO: XXXXXXXXXXX=%s",fname); PRINT_LOG(log_file, logmsg);
		db_dict = gdbm_open(fname,512,GDBM_READER,0666,my_fatal());

		strcpy(fname,fpath);
		strcat(fname,"/suff");
//sprintf(logmsg, "INFO: XXXXXXXXXXX=%s",fname); PRINT_LOG(log_file, logmsg);

		db_suff = gdbm_open(fname,512,GDBM_READER,0666,my_fatal());

		strcpy(fname,fpath);
		strcat(fname,"/uword");
//sprintf(logmsg, "INFO: XXXXXXXXXXX=%s",fname); PRINT_LOG(log_file, logmsg);
		db_uword = gdbm_open(fname,512,GDBM_READER,0666,my_fatal());

	}
	sprintf(logmsg, "INFO: Opened GDBM database files needed to run morph"); PRINT_LOG(log_file, logmsg);


	while (1)		/* while word exists */
	{
		sprintf(logmsg, "Entered into while loop -1 "); \
	PRINT_LOG(log_file, logmsg);
		if(c == EOF) {  /* executes when c is equql to end of file */
	/* this function checks end of input conditions */
	//kittu  fun_close(fpt1,fp_pdgm,swit1,DBM_FLAG,db_dict,db_suff);
	fun_close(fp_pdgm,swit1,DBM_FLAG,db_dict,db_suff);
	exit(0);
		} else { 
	data_str= create_tree();
	spw=(struct LR_word*)malloc(sizeof(struct LR_word));
	data_str->lwd=spw;
	sprintf(logmsg, "INFO: Going to read input file using SSF API"); PRINT_LOG(log_file, logmsg);
	sprintf(logmsg, "INFO: SSF Input File is |%s|", iname); PRINT_LOG(log_file, logmsg);
	read_ssf_from_file(data_str, iname);
	sprintf(logmsg, "INFO: child count s |%d|", data_str->child_count); PRINT_LOG(log_file, logmsg);
	int var;

	for (var=0; var< data_str->child_count; var++)
	{
	feature_str[0]='\0';
	node *child= get_nth_child(data_str, var);
	/* this function reads the input word */
	sprintf(logmsg, "INFO: Going to call fun_read()"); PRINT_LOG(log_file, logmsg);
	c=fun_read(morph, get_field(child,1));
	sprintf(logmsg, "INFO: Returned from fun_read(), c = |%d| count=%d|word=%s|\n", c, var, morph); PRINT_LOG(log_file, logmsg);

/*	int i;
	for(i=0;i<strlen(morph);i++) {
	if(root[i]=='^') 
		root[i]='\0';
	} */



	if (strcmp(morph,"\0"))   /* executes when morph equal to null */
	{
	FINDONCE = 0;
	//WORD_NUM++;
	/* executes when user friendly output and not equal to horizontal output */
	if(FOR_USER && !HORI_OUTPUT)
		printf("@input_word@\n word_num: w%d\n",WORD_NUM);
	else
		/* executes when not equal to horizontal output and 
		   word is not present in the dictionary */
		if(!HORI_OUTPUT && !YES_NO)
	printf("input_word\nw%d\n",WORD_NUM);	
	//if((morph[0] == '@') || (LINE_NUM_FLAG && end_mark(morph)))
	//if((morph[0] == '') || (LINE_NUM_FLAG && end_mark(morph)))
	if((LINE_NUM_FLAG && end_mark(morph)))
	{
		if(!HORI_OUTPUT)
	printf("AVY\n%s\n",morph);/* print the marked words as they are */
		else
	printf("%s",morph);/* print the marked words as they are */
	}
	else 
	{
		/* This function checks the Unkown word is present
		   in the UDictionary or not */
		chk_uword_dict(morph,uword_ar->sl_word,sizeof_uword,sizeof(uword_ar[0]),strcmp,uword_ans,DBM_FLAG,db_uword);
		if((uword_ans[0] != '\0') && (UWORD_DICT))
	if((!HORI_OUTPUT) && !YES_NO)
	printf("AVY\n%s\n",uword_ans);
	else 
	if(YES_NO)
	printf("%s",morph);
	else
	printf("%s",uword_ans);
		else
		{
	memset(g, '\0', sizeof(g));
	memset(n, '\0', sizeof(n));
	memset(p, '\0', sizeof(p));
	memset(kase, '\0', sizeof(kase));
	memset(cm, '\0', sizeof(cm));
	memset(tam, '\0', sizeof(tam));

	/* This function is the main functuon. It extracts suffixes and
	   calls different routines for analysis */
	sprintf(logmsg, "INFO: Calling fun_morph() for the word |%s|", morph); PRINT_LOG(log_file, logmsg);
	fun_morph(morph,fp_pdgm,DBM_FLAG,db_dict,db_suff,ans_ar,&no_of_ans);
	//sprintf(logmsg, "INFO: fun_morph() returned |%s|%d|%s|", ans_ar[loop1].root, ans_ar[var].offset, ans_ar[var].pdgm); PRINT_LOG(log_file, logmsg);
	sprintf(logmsg, "INFO: fun_morph() returned |%s|%d|%s|", ans_ar[var].root, ans_ar[var].offset, ans_ar[var].pdgm); PRINT_LOG(log_file, logmsg);

	struct sandhi_rule_pool rule_pool;
	strcpy(fpath,pdm);
	strcpy(fname,fpath);
//  printf("fpath  -- %s\n", fname);
//  fpath  -- /home/teltamilmt/sampark/data_bin/sl/morph/tel/
	strcat(fname,"/rls");
	//read_rules ("./rls", &rule_pool);
	read_rules (fname, &rule_pool);
	char lft_word[50],rt_word[50];

	memset(lft_word,'\0',50);
	memset(rt_word, '\0',50);
	/* if offest is not equal to -2 */
	if(ans_ar[0].offset == -2) 
	{
	sprintf(logmsg, "INFO: Checking word for ajFAwa "); PRINT_LOG(log_file, logmsg);
	if(YES_NO)	/* if answer is there */
	printf("%s<ajFAwa>",morph);
	if (swit1 == 0)
	{	
	if (!ispunct(c))
	{
		sprintf(logmsg, "INFO: entered into not punctuation"); PRINT_LOG(log_file, logmsg);
		sprintf(logmsg, "INFO: left word and right word before split |%s|%s|",lft_word,rt_word); PRINT_LOG(log_file, logmsg);
		int ret_status=0;
		ret_status = sandhi_split (morph, &rule_pool, fp_pdgm, DBM_FLAG, db_dict,db_suff, lft_word, rt_word,ans_ar_left,ans_ar_right,&no_of_ans_left,&no_of_ans_right);
		sprintf(logmsg, "INFO: left word and right word after sandhi split,now in main |%s|%s|%s|%s|",lft_word,rt_word,ans_ar_left[0].root,ans_ar_right[0].root); PRINT_LOG(log_file, logmsg);
		//sprintf(logmsg, "INFO: ret_status |%d|%d|%d|%s|%s|",ret_status, ans_ar_left[0].offset, ans_ar_right[0].offset, rt_word, lft_word); PRINT_LOG(log_file, logmsg);
	
//	printf("Iam morph=|%s| and root=|%s| and left=|%s| and right=|%s|\n", morph, root, ans_ar_left, ans_ar_right);


//memset(ans_ar_left[0].root,'\0',sizeof(ans_ar_left[0].root));
//printf (" ret_status=|%d|, ans_ar_left=|%d|, ans_ar_ri8=|%d|, rt_word=|%s|, lft_word=|%s|\n",ret_status, ans_ar_left[0].offset, ans_ar_right[0].offset, rt_word, lft_word);
	/*
	   AVY_srch returns
	   -1 if the word is avy
	   -2 if the word is not a number & not an avy
	   -3 if the word is a numeral
	   */
	/* offset is given as !=0 to handle the unk forms after sandhi_split
1	raagaalanu	ret_status=|0|, ans_ar_left=|-2|, ans_ar_ri8=|0|, rt_word=||, lft_word=||
2	puswakamEwe	ret_status=|1|, ans_ar_left=|914|, ans_ar_ri8=|1919|, rt_word=|Ewe|, lft_word=|puswakaM|
3	raagaalanu	ret_status=|1|, ans_ar_left=|0|, ans_ar_ri8=|0|, rt_word=||, lft_word=||
	*/
	// original_030712  if((ret_status == 1) && (ans_ar_left[0].offset != -2) && (ans_ar_right[0].offset !=-2) && (lft_word != '\0') && (rt_word != '\0'))
	//  if((ret_status == 1) && (ans_ar_left[0].offset != -2) && (ans_ar_right[0].offset !=-2) && (lft_word != '\0') && (rt_word != '\0'))
	if((ret_status == 1) && (ans_ar_left[0].offset != 0) && (ans_ar_right[0].offset != 0) && (lft_word != '\0') && (rt_word != '\0'))
		{
	flag_unk=1;
		}
		else {
		strcpy(root, morph); strcpy(cat, "unk");
		strcpy(g, ""); strcpy(n, "");
		strcpy(p, ""); strcpy(kase, "");
		strcpy(cm, ""); strcpy(tam, "");
		strcat(feature_str,"<fs "); strcat(feature_str, "af='");
		strcat(feature_str, root); strcat(feature_str, ",");
		strcat(feature_str, cat); strcat(feature_str, ",");
		strcat(feature_str, g); strcat(feature_str, ",");
		strcat(feature_str, n); strcat(feature_str, ",");
		strcat(feature_str, p); strcat(feature_str, ",");
		strcat(feature_str, kase); strcat(feature_str, ",");
		strcat(feature_str, cm); strcat(feature_str, ",");
		strcat(feature_str, tam); strcat(feature_str, "'>");
		}
	} 

	}
	}
	if( ans_ar[0].offset != -2 || flag_unk == 1 )
	{
	if(YES_NO) 	/* if answer is there */
	printf("%s",morph);
	else
	{
	sprintf(logmsg, "INFO: left word and right word after sandhi split,now in main |%s|%s|%s|%s|",lft_word,rt_word,ans_ar_left[0].root,ans_ar_right[0].root); PRINT_LOG(log_file, logmsg);
		strcpy(child->left5,lft_word);
		strcpy(child->rgt5,rt_word);
	loop1=0;
	pipe_flag=0;
	/* executes when ans_ar.offset is <=-2 */
	//while(ans_ar[loop1].offset !=-2)
	//while(ans_ar[loop1].offset !=-2 || ans_ar_left[0].offset !=-2)
	int word_count=0;
	while(1) {
//	printf("next word is goint to print\n");
	int loopsize=0;
	//int flag_unk=0;
	struct ans_struct* ans_ar_tmp;
	if( flag_unk == 0 && word_count ==0 ){
	//if( ans_ar_left != -1 && word_count ==0 ){
	//printf("The ans_ar is %s\n", ans_ar);
	ans_ar_tmp = ans_ar;
	loopsize = no_of_ans;
	}
	else if( flag_unk == 1 && word_count == 0 ){
	//	printf("the ans_ar_left %s\n", ans_ar_left);
	ans_ar_tmp = ans_ar_left;
//	ans_ar_tmp = ans_ar;
	loopsize = no_of_ans_left;
	}
	else if( flag_unk == 1 && word_count == 1 ){
	//	printf("the ans_ar_right %s\n", ans_ar_right);
	ans_ar_tmp = ans_ar_right;
	loopsize = no_of_ans_right;
// 040611 introduced by paramesh, In input if a ind.word comes below input of split words,flag_num need 2 be "0"
	flag_unk = 0;
	word_count = 0;
	}
	else 
	//	{
	break;
	//	}
		//printf("Input word is -- %s\n", ans_ar_tmp[0].root);
	if(!strcmp(child->left5,""))
//||strcmp(child->	
{
strcpy(child->left5,child->node_tkn);
}

		//printf("now the flag_unk is %d\n\n", flag_unk);
		//printf("now the word_count is %d\n\n", word_count);
		word_count++;
		loop1 = 0;

	// 020611 changed by paramesh, this allows to give more than an analysis.
	
	while(ans_ar_tmp[loop1].offset !=-2)
	//while(ans_ar_right[loop1].offset !=-2)
	//while(ans_ar[loop1].offset !=-2 || ans_ar_left[0].offset !=-2)
	//while( loop1< loopsize )
	{
//										printf("answer going ot print\n");
		if(pipe_flag)
	strcat(feature_str, " ");
		pipe_flag=1;
		if(ans_ar_tmp[loop1].offset == -1)  /* checks for Avy */
	/* executes when output is not there */
	if(!HORI_OUTPUT)
	printf("Avy\n%s\n",ans_ar_tmp[loop1].root);
	else
	printf("%s{Avy}",ans_ar_tmp[loop1].root);
		else
	if(ans_ar_tmp[loop1].offset == -3) /* Case of Numeral */
	/* executes when output is not there */
	if(!HORI_OUTPUT) {
	printf("Avy\n%s\n",ans_ar_tmp[loop1].root);
	} else {
	if(ispunct(ans_ar_tmp[loop1].root[0])) {
		strcpy(root, ans_ar_tmp[loop1].root); strcpy(cat, "punc");
		strcpy(g, ""); strcpy(n, ""); strcpy(p, "");
		strcpy(kase, ""); strcpy(cm, ""); strcpy(tam, "");
		strcpy(feature_str,"");
		strcat(feature_str,"<fs "); strcat(feature_str, "af='");

// paramesh: NCR Values are introduced here 310112 Starting.....

if(!strcmp(root,"!")) { 
	strcpy(root,"&exm;");
}
if(!strcmp(root,".")) { 
	strcpy(root,"&dot;");
}
if(!strcmp(root,",")) { 
	strcpy(root,"&comma;");
}
if(!strcmp(root,"<")) { 
	strcpy(root,"&lang;");
}
if(!strcmp(root,">")) { 
	strcpy(root,"&rang;");
}
if(!strcmp(root,"/")) { 
	strcpy(root,"&frasl;");
}
if(!strcmp(root,"?")) { 
	strcpy(root,"&qus;");
}
if(!strcmp(root,";")) { 
	strcpy(root,"&scol;");
}
if(!strcmp(root,":")) { 
	strcpy(root,"&col;");
}
if(!strcmp(root,"\"")) { 
	strcpy(root,"&bdquo;");
}
if(!strcmp(root,"'")) { 
	strcpy(root,"&apos;");
}
if(!strcmp(root,"[")) { 
	strcpy(root,"&lsbrs;");
}
if(!strcmp(root,"]")) { 
	strcpy(root,"&rsbrs;");
}
if(!strcmp(root,"{")) { 
	strcpy(root,"&lfbrs;");
}
if(!strcmp(root,"}")) { 
	strcpy(root,"&rfbrs;");
}
//if(!strcmp(root,"\/")) { 
//strcpy(root,"&brasl;");
//}
if(!strcmp(root,"|")) { 
	strcpy(root,"&pipe;");
}
if(!strcmp(root,"=")) { 
	strcpy(root,"&equl;");
}
if(!strcmp(root,"+")) { 
	strcpy(root,"&add;");
}
if(!strcmp(root,"-")) { 
	strcpy(root,"&minus;");
}
if(!strcmp(root,"_")) { 
	strcpy(root,"&unds;");
}
if(!strcmp(root,"(")) { 
	strcpy(root,"&rcbrs;");
}
if(!strcmp(root,")")) { 
	strcpy(root,"&lcbrs;");
}
if(!strcmp(root,"*")) { 
	strcpy(root,"&lowast;");
}
if(!strcmp(root,"&")) { 
	strcpy(root,"&amp;");
}
if(!strcmp(root,"^")) { 
	strcpy(root,"&circ;");
}
if(!strcmp(root,"%")) { 
	strcpy(root,"&perc;");
}
if(!strcmp(root,"$")) { 
	strcpy(root,"&dol;");
}
if(!strcmp(root,"#")) { 
	strcpy(root,"&hash;");
}
if(!strcmp(root,"@")) { 
	strcpy(root,"&atrat;");
}
if(!strcmp(root,"~")) { 
	strcpy(root,"&tilde;");
}
if(!strcmp(root,"`")) { 
	strcpy(root,"&acute;");
}
if(!strcmp(root,"‘")) { 
	strcpy(root,"&lsquo;");
}
if(!strcmp(root,"’")) { 
	strcpy(root,"&rsquo;");
}
if(!strcmp(root,"‚")) { 
	strcpy(root,"&sbquo;");
}
if(!strcmp(root,"“")) { 
	strcpy(root,"&ldquo;");
}
if(!strcmp(root,"”")) { 
	strcpy(root,"&rdquo;");
}
if(!strcmp(root,"...")) { 
	strcpy(root,"&hellep;");
}

// paramesh: NCR Values are introduced here 310112 ...Ending


		strcat(feature_str, root); strcat(feature_str, ",");
		strcat(feature_str, cat); strcat(feature_str, ",");
		strcat(feature_str, g); strcat(feature_str, ",");
		strcat(feature_str, n); strcat(feature_str, ",");
		strcat(feature_str, p); strcat(feature_str, ",");
		strcat(feature_str, kase); strcat(feature_str, ",");
		strcat(feature_str, cm); strcat(feature_str, ",");
		strcat(feature_str, tam); strcat(feature_str, "'>");
	} else { 
		strcpy(root, ans_ar_tmp[loop1].root); strcpy(cat, "num");
		strcpy(g, ""); strcpy(n, ""); strcpy(p, "");
		strcpy(kase, ""); strcpy(cm, ""); strcpy(tam, "");
		strcat(feature_str,"<fs "); strcat(feature_str, "af='");
		strcat(feature_str, root); strcat(feature_str, ",");
		strcat(feature_str, cat); strcat(feature_str, ",");
		strcat(feature_str, g); strcat(feature_str, ",");
		strcat(feature_str, n); strcat(feature_str, ",");
		strcat(feature_str, p); strcat(feature_str, ",");
		strcat(feature_str, kase); strcat(feature_str, ",");
		strcat(feature_str, cm); strcat(feature_str, ",");
		strcat(feature_str, tam); strcat(feature_str, "'>");

	}
	}

	else  if(HORI_OUTPUT)
	/* executes when output is there */
	{

	/* This function prints the output
	   in horizontal way for the given input word */
	memset(tam, '\0', sizeof(tam));
	memset(cm, '\0', sizeof(cm));
	memset(cm_variation, '\0', sizeof(cm_variation));
	memset(lcat_variation, '\0', sizeof(lcat_variation));
	memset(verb_lcat_variation, '\0', sizeof(verb_lcat_variation));
	//sprintf(logmsg, "INFO: Calling resufun_hori(),|root=%s|cat=%s|g=%s|n=%s|p=%s|case=%s|cm=%s|suff=%s|", root, cat, g, n, p, kase, cm, tam ); PRINT_LOG(log_file, logmsg);

	sprintf(logmsg, "INFO: Calling resufun_hori(),|root=%s|cat=%s|g=%s|n=%s|p=%s|case=%s|cm=%s|suff=%s|", ans_ar_tmp[loop1].root,ans_ar_tmp[loop1].pdgm,ans_ar_tmp[loop1].offset,ans_ar_tmp[loop1].aux_verb,root, cat, g,n );
	resufun_hori(ans_ar_tmp[loop1].root,ans_ar_tmp[loop1].pdgm,ans_ar_tmp[loop1].offset,ans_ar_tmp[loop1].aux_verb,root, cat, g,n,p, kase,cm, tam );
	sprintf(logmsg, "INFO: Calling resufun_hori(),root=%s|cat=%s|g=%s|n=%s|p=%s|case=%s|cm=%s|suff=%s|", root, cat, g, n, p, kase, cm, tam ); PRINT_LOG(log_file, logmsg);
//
//													                                                                                                        resufun_hori(ans_ar_right[loop1].root,ans_ar_right[loop1].pdgm,ans_ar_right[loop1].offset,ans_ar_right[loop1].aux_verb,root, cat, g,n,p, kase,cm, tam );

//													sprintf(logmsg, "INFO: Calling resufun_hori(),|root=%s|cat=%s|g=%s|n=%s|p=%s|case=%s|cm=%s|suff=%s|", root, cat, g, n, p, kase, cm, tam ); PRINT_LOG(log_file, logmsg);

	/*  for(i=0;i<=5;i++)
	    {
	    if((!strcmp(tam[2],"e_"))||(!strcmp(tam[4],"ina_"))||(!strcmp(tam[4],"ani_"))||(!strcmp(tam[5],"adaM_"))||(!strcmp(tam[6],"wunna_")))
	    {
	    strcpy(lcat,"v");
	    }
	    }*/
	strcat(feature_str,"<fs ");
	strcat(feature_str, "af='");
	strcat(feature_str, root);
	strcat(feature_str, ",");
	verb_lcat_split(tam,verb_lcat_variation,word_count);
	lcat_verify(tam,lcat_variation,word_count);
	if(lcat_variation)  {
//printf ("PARAMESH--lcat_variation=|%s|\n",lcat_variation[0]);
	if((!strcmp(lcat_variation[0],"adv"))&&((!strcmp(tam,""))||(strcmp(tam,"0_adv")))){
	strcpy(lcat_variation[0],"nst");
		sprintf(logmsg, "INFO: iam here with Calling |cat=%s|lcat_veriation=%s|", cat, lcat_variation); PRINT_LOG(log_file, logmsg);
	}
		sprintf(logmsg, "INFO: Calling |cat=%s|lcat_veriation=%s|", cat, lcat_variation); PRINT_LOG(log_file, logmsg);
		//strcpy(lcat_variation);
		if(!strcmp(lcat_variation[0],"")) {
	sprintf(logmsg, "INFO: Calling |lcat_veriation=%s|", cat); PRINT_LOG(log_file, logmsg);
	strcat(feature_str, cat);
		}
		else { strcat(feature_str,lcat_variation[0]); }
	}
	if(!strcmp(cat,"pn")) {
		memset(g, '\0', sizeof(g));
		memset(p, '\0', sizeof(p));
		if((!strcmp(root,"nenu"))||(!strcmp(root,"memu"))||(!strcmp(root,"meM"))||(!strcmp(root,"manaM")))
		{
	strcpy(p,"1");
	strcpy(g,"any");
		}
		else if((!strcmp(root,"nuvvu"))||(!strcmp(root,"nIvu"))||(!strcmp(root,"mIru"))||(!strcmp(root,"wamaru"))||(!strcmp(root,"wAmu")))
		{
	strcpy(p,"2");
	strcpy(g,"any");
		}
		else if((!strcmp(root,"vAdu"))||(!strcmp(root,"vIdu"))||(!strcmp(root,"iwanu"))||(!strcmp(root,"awadu"))||(!strcmp(root,"awanu"))||(!strcmp(root,"iwadu"))||(!strcmp(root,"eVvadu")))
		{
	strcpy(p,"3");
	strcpy(g,"m");
		}
		else if((!strcmp(root,"vAru"))||(!strcmp(root,"vIru"))||(!strcmp(root,"vAlYlu"))||(!strcmp(root,"vIlYlu"))||(!strcmp(root,"eVvaru"))||(!strcmp(root,"wanu"))||(!strcmp(root,"winu")))
		{
	strcpy(p,"3");
	strcpy(g,"fm");
		}
		else if((!strcmp(root,"AmeV"))||(!strcmp(root,"ImeV"))||(!strcmp(root,"Avida"))||(!strcmp(root,"Ivida"))||(!strcmp(root,"emeV")))
		{
	strcpy(p,"3");
	strcpy(g,"f");
		}
		else if((!strcmp(root,"axi"))||(!strcmp(root,"ixi"))||(!strcmp(root,"exi")))
		{
	strcpy(p,"3");
	strcpy(g,"fn");
		}
		sprintf(logmsg, "new- gnp for Pronoun|gen=%s|per=%s|", g, p); PRINT_LOG(log_file, logmsg);
	}
	strcat(feature_str, ",");
	strcat(feature_str, g);
		memset(g, '\0', sizeof(g));
	strcat(feature_str, ",");
	strcat(feature_str, n);
		memset(n, '\0', sizeof(n));
	strcat(feature_str, ",");
	strcat(feature_str, p);
		memset(p, '\0', sizeof(p));
	strcat(feature_str, ",");
	strcpy(cm,tam);
	memset(tam_variation, '\0', sizeof(tam_variation));
	if((!strcmp(cat,"n"))||(!strcmp(cat,"pn"))) {
	tam_split(tam,tam_variation,word_count);
	if(!strcmp(cm,"0")) {
	strcpy(kase,"d");
	}
	/*paramesh 290612*/
	//if((strcmp(cm,"0"))&&(strcmp(cm,"\0"))) {
	//strcpy(kase,"o");
	//}
	/*paramesh 290612*/
	if(!strcmp(tam,"obl")) {
	strcpy(kase,"o");
	strcat(feature_str, kase);
	memset(kase,'\0',sizeof(kase));
	strcat(feature_str, ",");
	strcpy(tam,"ti");
	strcpy(cm,tam);
	}
	 else if(strcmp(tam_variation[0],"")){
	strcat(feature_str, kase);
	memset(kase,'\0',sizeof(kase));
	strcat(feature_str, ",");
	strcpy(cm,tam_variation[0]);
	}
	else{ 
	strcat(feature_str, kase);
memset(kase,'\0',sizeof(kase));
	strcat(feature_str, ",");
	strcpy(cm,tam);
	}
	} else {
	memset(kase, '\0', sizeof(kase));
	strcat(feature_str, kase);
	strcat(feature_str, ",");
	strcpy(cm,tam);
	}
	if((strcmp(cm,"0"))&&(strcmp(cm,""))&&(!strcmp(cat,"adv"))) {
	memset(cat, '\0', sizeof(cat));
	strcpy(cat,"nst");
	}
	if(!strcmp(cat,"v")) {
		//aux_clt_split(tam,tam_variation1,word_count);
		if(tam) {
	tam_split(tam,tam_variation,word_count);
	if(strcmp(tam_variation[0],""))
	{
	strcpy(cm, tam_variation[0]);
	strcat(feature_str, cm);
memset(cm,'\0',sizeof(cm));
	strcat(feature_str, ",");
	} 
	else {
	strcpy(cm, tam);
	strcat(feature_str, cm);
memset(cm,'\0',sizeof(cm));
	strcat(feature_str, ",");
	}
	}

		} else {
	strcat(feature_str, cm);
memset(cm,'\0',sizeof(cm));
	strcat(feature_str, ",");
		}
	strcat(feature_str, tam);
memset(tam,'\0',sizeof(tam));
	strcat(feature_str, "'>");
	}
// itr1+=1;
		sprintf(logmsg, "lopp1 is and FS=%s", feature_str); PRINT_LOG(log_file, logmsg);
//		printf("\nPARAMESH--cat--|%s|,cm--|%s|,tam=|%s|\n", feature_str, cm, tam);
	//	if(itr1==1){
	//		strcpy(feature_str_lr,feature_str);
		//	strcpy(feature_str,'\0');
	//	}
//if(itr1>1)	itr1=0;

		strcpy(ans_ar_tmp[loop1].root,"");
		ans_ar_tmp[loop1].offset = 0;
		strcpy(ans_ar_tmp[loop1].aux_verb,"");
		strcpy(ans_ar_tmp[loop1].pdgm,"");
		loop1++;
		//printf("\nPARAMESH--cat--|%s|,cm--|%s|,tam=|%s|\n", feature_str, cm, tam);
		// if(HORI_OUTPUT) printf("`>");
//										printf("first answer printed\n");
	}
itr1+=1;
	 if(itr1==1){
                        strcpy(feature_str_lr,feature_str);
                //      strcpy(feature_str,'\0');
                      feature_str[0]='\0';
                             }
                //
//									printf("first word completed\n");
	}
itr1=0;
	} 
	} 
	}
	}
	if((c=='.') || (c == '?')||(c=='"'))
	{
		WORD_NUM++;
		/* checks for Horizontal output and YES_NO if word is present in dict */
		if(!HORI_OUTPUT && !YES_NO)
	/* This function prints the output in horizontal way for
	   the given input word */
	printf("input_word\nw%d\nAVY\n%c\n",WORD_NUM,c);
		else 
	if(!YES_NO) 
	//  printf("%c\n",c);
	printf("",c);
	else 
	printf("%c",c); 
		SENT_NUM++;
	}
	}
	child->OR= read_or_node( feature_str_lr);	
	child->OR1=read_or_node(feature_str);
	feature_str_lr[0]='\0';

	}
	print_tree_to_file(data_str, oname);
	sprintf(logmsg, "out write sucessfully", feature_str); PRINT_LOG(log_file, logmsg);
	 //print_tree(data_str);
		//fun_close(fpt1,fp_pdgm,swit1,DBM_FLAG,db_dict,db_suff);
	fun_close(fp_pdgm,swit1,DBM_FLAG,db_dict,db_suff);
	exit(0);
		}  
	}
}
