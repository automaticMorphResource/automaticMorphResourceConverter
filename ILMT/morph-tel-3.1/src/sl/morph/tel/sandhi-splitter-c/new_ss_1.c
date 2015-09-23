#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <regex.h>
#include "substr.c"
#include "split_arr.c"



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

int sandhi_split (char *input_word, struct sandhi_rule_pool *rule_pool,char *left_word, char *right_word);
void read_rules (char *rule_file_name, struct sandhi_rule_pool *rule_pool);



int
main (int argc, char *argv[])
{
//  struct sandhi temp_out;
  struct sandhi_rule_pool rule_pool;
	char lft_word[50],rt_word[50];

  read_rules ("rls", &rule_pool);

  sandhi_split ("hasyaspada", &rule_pool,lft_word,rt_word);
  sandhi_split ("nenunnanu", &rule_pool,lft_word,rt_word);
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
  size_of_rls= size_of_rls-1;
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


int sandhi_split (char *input_word, struct sandhi_rule_pool *rule_pool, char *lft_word, char *rt_word)
{
// int split_pos = 0;
  int pattern_matched[rule_pool->no_of_rules];
  int i, j, k;
  char left_word_tmp[50], right_word_tmp[50];

  for (i = 0; i < rule_pool->no_of_rules-3; i++)
    {				// for every rule in rule pool
      pattern_matched[i] = 0;
//      printf ("checking with %s\t", rule_pool->rule[i].pat);
//      for (j = 0, k = 0; input_word[j] != '\0'; j++)
//      {                       // comparing with every character in input word


//        int match (const char *string, char *pattern)
//      {
	int status;
	regex_t re;
	regmatch_t split_pos[2];
	size_t no_of_matches=1;
	if (regcomp (&re, rule_pool->rule[i].pat, REG_EXTENDED ) !=
	    0)
	  {
	    pattern_matched[i] = 0;
	    break;
	  }
//	  printf("regexec\n");
	status = regexec (&re, input_word, no_of_matches, split_pos, 0);
//	printf("regexec over\n");
	regfree (&re);
//	printf("freed\n");
	if (status != 0)
	  {
	    pattern_matched[i] = 0;
	  }
	  else
	  	pattern_matched[i] = 1;
//      }

/*      if (rule_pool->rule[i].pat[k] == input_word[j])
	{
	  printf ("-%c=%c\t", rule_pool->rule[i].pat[k], input_word[j]);
	  k++;			//pattern matched till the character
	}
      else if (rule_pool->rule[i].pat[k] == '[')
	{			// pattern matched till '['
	  for (; rule_pool->rule[i].pat[k] != ']'; k++)
	    {
	      if (rule_pool->rule[i].pat[k] == input_word[j])
		{
		  pattern_matched[i] = 1;
		  printf ("pattern matched for rule no %d\n", i);
		  break;
		}
	    }
	}
      else
	{
	  k = 0;		// start from beginning of pattern
	  split_pos = j;
	}
    }
*/

//	printf("checking over\n");
      if (pattern_matched[i] == 1)
	{
//		printf("pattern matched\n");
	  substr (input_word, 0, split_pos[0].rm_so, left_word_tmp);
	  substr (input_word, split_pos[0].rm_so, strlen (input_word), right_word_tmp);
	  printf
	    ("pattern no is %s, and pattern is %s,spliting is at=%d, matched left word is=%s, right word is=%s\n", rule_pool->rule[i].rl_no,
	     rule_pool->rule[i].pat, split_pos[0].rm_so, left_word_tmp,
	     right_word_tmp);
		strcpy(lft_word, left_word_tmp);
		strcpy(rt_word, right_word_tmp);
//		return 0;
	}
    }
}
