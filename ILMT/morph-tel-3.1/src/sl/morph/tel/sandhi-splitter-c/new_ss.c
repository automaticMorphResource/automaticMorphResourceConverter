
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <regex.h>
#include <gdbm.h>
#include "substr.c"
#include "split_arr.c"
#include "../morph_telugu.c"
//#include "../headers/struct.h"
//#include "../headers/struct1.h"
//#include "../c_api_v2/c_api_v2.h"
#include "../common/analyser/morph_logger.h"
#include "../headers/glbl.h"
#include "../headers/defn.h"
//#include "../main_telugu.c"


struct sandhi_rule_pool
{
  int no_of_rules;
  struct sandhi_rule *rule;
};


struct sandhi_rule
{
  char rl_no[5];
  char pat[30];
  char br_pt[3];
  char lft_dlt[2];
  char lft_add[2];
  char rt_dlt[2];
  char rt_add[2];
  char lft_mo_call[2];
  char rt_mo_call[2];
  char lft_cond[30];
  char rt_cond[30];
};


/* Global Variables */
int DEBUG;			/* checks for the existance of word */
int DEBUG_NEW;
int FINDONCE;			/* indicates existance of word in the dictionary */
int FOR_USER;			/* for user friendly output */
int DEFAULT_PARADIGM;		/* for choosing default paradigm if it is not present in the dict */
int ALWAYS_DEFAULT_PARADIGM;	/* always choose the default paradigm , even though entry is
				   found in the dict */
int WORD_NUM;			/* for assigning word number */
int SENT_NUM;			/* for assigning sentence number */
int LINE_NUM_FLAG;		/* checks for line number is there or not */
int UWORD_DICT;			/* checks for uword dict is there or not */
int HORI_OUTPUT;		/* checks for Horizontal output  */
int YES_NO;			/* answer yes if word is present in dict */
int KRIYAMULA;
int direct_ans_flag;
int INFLTNL;

int sizeof_prop_noun_lex;	/* size of proper noun lexical information */
struct lex_info prop_noun_lex_ar[Lexsize];	/* lexical information structure containig info of
						   root,paradigm,offset,category and priority */

char *program_name = "main.c";
char *log_filepath = "morph.log";
char *logmsg;
char log_messg;
FILE *log_file;



extern void *my_fatal ();
/* print_log - logs the debug messages to the specified log file */
//extern void print_log(FILE *log_file, char *message, char *program_name, char *file_name, int *line_no, char *function_name);

/* print_err - logs the error messages to the log_file */
//extern void print_err(FILE *log_file, char *message, char *program_name);





int sandhi_split (char *input_word, struct sandhi_rule_pool *rule_pool,
		  FILE * fp_pdgm, int DBM_FLAG, GDBM_FILE db_lex,
		  GDBM_FILE db_suff, char *left_word, char *right_word);
void read_rules (char *rule_file_name, struct sandhi_rule_pool *rule_pool);



int
main (int argc, char *argv[])
{
//  struct sandhi temp_out;
  struct sandhi_rule_pool rule_pool;
  char lft_word[50], rt_word[50];
  FILE *fp;
  char *line = NULL;
  size_t len = 0, read;

  FILE *fp_pdgm;
  int DBM_FLAG;
  GDBM_FILE db_lex;
  GDBM_FILE db_suff;

  /* checks for paradigm file can be opened or not */
  if ((fp_pdgm = fopen ("./pdgm_offset_info", "r")) == NULL)
    {
      printf ("Error in opening pdgm_offset_info file\n ");
      exit (0);
    }
  DBM_FLAG = 1;
  if (DBM_FLAG)
    {
//      strcpy (fname, fpath_dict);
      db_lex = gdbm_open ("dict-tel", 512, GDBM_READER, 0666, my_fatal ());

//      strcpy (fname, fpath);
//      strcat (fname, "/suff");
      db_suff = gdbm_open ("./suff", 512, GDBM_READER, 0666, my_fatal ());

//      strcpy (fname, fpath);
//      strcat (fname, "/uword");
//      db_uword = gdbm_open ("/uword"fname, 512, GDBM_READER, 0666, my_fatal ());

    }





  read_rules ("rls", &rule_pool);

  sandhi_split ("abaxXamannamAta", &rule_pool, fp_pdgm, DBM_FLAG, db_lex,
		db_suff, lft_word, rt_word);
  sandhi_split ("abaxXamaMtAvA", &rule_pool, fp_pdgm, DBM_FLAG, db_lex,
		db_suff, lft_word, rt_word);
  sandhi_split ("aBAvAwmakamEwe", &rule_pool, fp_pdgm, DBM_FLAG, db_lex,
		db_suff, lft_word, rt_word);
  sandhi_split ("aBAvAwmakamE", &rule_pool, fp_pdgm, DBM_FLAG, db_lex,
		db_suff, lft_word, rt_word);
  sandhi_split ("aBAvArWakamEnappatiki", &rule_pool, fp_pdgm, DBM_FLAG,
		db_lex, db_suff, lft_word, rt_word);
  sandhi_split ("aBAvArWakamavuwuMxi", &rule_pool, fp_pdgm, DBM_FLAG, db_lex,
		db_suff, lft_word, rt_word);
  sandhi_split ("aBAvamugala", &rule_pool, fp_pdgm, DBM_FLAG, db_lex, db_suff,
		lft_word, rt_word);
  sandhi_split ("ABaraNAlannI", &rule_pool, fp_pdgm, DBM_FLAG, db_lex,
		db_suff, lft_word, rt_word);

  fp = fopen ("ss.rin", "r");
  if (fp == NULL)
    {
      printf ("File cannot be opened\n");
      exit (0);
    }

  while ((read = getline (&line, &len, fp)) != -1)
    {
      printf ("Retrieved line of length %zu :", read);
      printf ("%s\n", line);
      sandhi_split (line, &rule_pool, fp_pdgm, DBM_FLAG, db_lex, db_suff,
		    lft_word, rt_word);
      printf
	("\n****#################*************################************###########\n");
    }

  if (line)
    free (line);
  fclose (fp);


  return 0;
}

void
read_rules (char *rule_file_name, struct sandhi_rule_pool *rule_pool)
{
  FILE *fp;
  char rls[700][100], ss[100];
  int size_of_rls = 0, i, j;
  char san[15][50];

  fp = fopen (rule_file_name, "r");
  if (fp == NULL)
    {
      printf ("File cannot be opened\n");
      exit (0);
    }

  /* Read The file line by line and  putting into an array */

  while ((fgets (ss, 100, fp)) != NULL)
    {
      ss[strlen (ss) - 1] = '\0';
      strcpy (rls[size_of_rls], ss);
      size_of_rls++;
    }
  fclose (fp);
  size_of_rls = size_of_rls - 1;
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

//      strcpy (temp, rls[j]);
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


int
sandhi_split (char *input_word, struct sandhi_rule_pool *rule_pool,
	      FILE * fp_pdgm, int DBM_FLAG, GDBM_FILE db_lex,
	      GDBM_FILE db_suff, char *lft_word, char *rt_word)
{
// int split_pos = 0;
  int pattern_matched[rule_pool->no_of_rules];
  int i, j, k;
  char left_word_tmp[50], right_word_tmp[50];



  for (i = 0; i < rule_pool->no_of_rules - 3; i++)
    {				// for every rule in rule pool
      pattern_matched[i] = 0;
//      printf ("checking with %s\t", rule_pool->rule[i].pat);
      int status;
      regex_t re;
      regmatch_t split_pos[2];
      size_t no_of_matches = 1;
      if (regcomp (&re, rule_pool->rule[i].pat, REG_EXTENDED) != 0)
	{
	  pattern_matched[i] = 0;
	  break;
	}
//        printf("regexec\n");
      status = regexec (&re, input_word, no_of_matches, split_pos, 0);
//      printf("regexec over\n");
      regfree (&re);
//      printf("freed\n");
      if (status != 0)
	{
	  pattern_matched[i] = 0;
	}
      else
	pattern_matched[i] = 1;

//      printf("checking over\n");
      if (pattern_matched[i] == 1)
	{
//              printf("pattern matched\n");
	  if (split_pos[0].rm_so == 0)
	    {
	      substr (input_word, 0, split_pos[0].rm_eo, left_word_tmp);
	      substr (input_word, split_pos[0].rm_eo, strlen (input_word),
		      right_word_tmp);
	    }
	  else
	    {
	      substr (input_word, 0,
		      split_pos[0].rm_so + atoi (rule_pool->rule[i].br_pt),
		      left_word_tmp);
	      substr (input_word,
		      split_pos[0].rm_so + atoi (rule_pool->rule[i].br_pt),
		      strlen (input_word), right_word_tmp);
	    }


	  left_word_tmp[strlen (left_word_tmp) -
			atoi (rule_pool->rule[i].lft_dlt)] = '\0';
	  strcpy (lft_word, "");
	  strcpy (rt_word, "");
	  strcat (lft_word, left_word_tmp);
	  strcat (lft_word, rule_pool->rule[i].lft_add);
	  strcat (rt_word, rule_pool->rule[i].rt_add);
	  strcat (rt_word, right_word_tmp + atoi (rule_pool->rule[i].rt_dlt));

	  printf
	    ("pattern no is %s, and pattern is %s,spliting is at=%d, matched left word is=%s, right word is=%s\n",
	     rule_pool->rule[i].rl_no, rule_pool->rule[i].pat,
	     split_pos[0].rm_so, lft_word, rt_word);


//              call for fun_morph

	  struct ans_struct ans_ar[2];

	  fun_morph (lft_word, fp_pdgm, DBM_FLAG, db_lex, db_suff, ans_ar);
	  printf ("fun morph done for left word and offset is %d\n",
		  ans_ar[0].offset);


	  fun_morph (rt_word, fp_pdgm, DBM_FLAG, db_lex, db_suff, ans_ar);

//        strcpy (lft_word, left_word_tmp);
//        strcpy (rt_word, right_word_tmp);
//              return 0;
	}
    }
}
