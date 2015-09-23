/*
 * This program reads rules from the table and if rule matches, 
 * then it prints the morph and split words.
 */

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<unistd.h>
#include<getopt.h>
#include<errno.h>

//#include"sandhi_logger.h"
//#include"sandhi_logger.c"
#include"pcre.h"
//#include"myget_mo_ana.c"

#define OVECCOUNT 30
#define FUNCTION "main()"

char *program_name="sandhi_split";
FILE *log_file;
char *log_messg;
//char *log_filepath;

int rc;
char matc_pat[30];	/* These four global variables are used in pcre_match.c */
char lft[30];
char rt[30];

void split_arr(char arr[300],char ch,char new[15][50]);	

	struct sandhi	   	/* Structure Declaration to store the rules file */
	{
     char rl_no[5];
     char pat[30];
     char br_pt[3];
     char lft_dlt[2];
     char lft_add[2];
     char rt_dlt[2];
     char rt_add[20];
     char lft_mo_call[2];
     char rt_mo_call[2];
     char lft_cond[30];
     char rt_cond[300];
   	};

main(int argc ,char *argv[])
{
char ss[100],rls[1000][500],temp[100],san[50][50],orig_word[WORD_SIZE];
int i,j,debug ,size_of_rls=0,flag,brk;
char patl[30],patr[30],lftF[400],rtF[400],lft_ans[500],rt_ans[500];

	FILE *rulesfile;
//	FILE *log_file;
//	char *log_messg;
	//char *log_filepath;
	 
	struct sandhi split[1000];

	char *rulesfilename, 
	//*logfile;	/*rules for --rulesfilepath argument*/
	char *p,*o, *iname, *oname;
	extern char *optarg;
	extern FILE *stdin;
	extern FILE *stdout;
	char fpath[20],fname[20];int k;
	
//	log_messg = (char*) malloc(sizeof(char)*256);
//	memset(log_messg, '\0', 256);

    while (1)
    {
    	static struct option long_options[] =
        {
        	{"rulesfilename",required_argument, 0, 'r'},
  //          {"logfile",required_argument, 0, 'l'},
            {"infile",required_argument, 0, 'i'},
            {"outfile",required_argument, 0, 'o'},
            {"help",required_argument, 0, 'h'},
            {0, 0, 0, 0}
        };
        int option_index=0;
        k = getopt_long(argc, argv, "rioh",long_options, &option_index);
       	if (k == -1)
        	break;
//exit(100);
       	switch (k)
        {
	/*	case 'l':
			logfile = optarg;
			break;		*/
	
		case 'r':	/* option c for rulespath */
			rulesfilename=optarg;
            break;
        
		case 'i':	/* option p for input file */
			iname=optarg;
            stdin=fopen(iname,"r");
            break;
        
		case 'o':	 /* option o for output file */
			oname=optarg;
            stdout=fopen(oname,"w");
			break;
        
		default:
        //	help=optarg;
		//	printf("case = h\n");
		//	printf("Helllo");
			printf("Usage: sandhi_split --rulesfilename <rules file> --infile <input file> --outfile <output file --logfile <log file>");
            break;
    	}	/*End of switch statement*/
    }/*End of while loop*/

		/*	if((log_file = fopen(logfile, "w")) == NULL)
			{
				sprintf(log_messg, "Error: Could not create logfile: %s", logfile);
		 		perror(log_messg);
				exit(-1);
			}
			sprintf(log_messg, "INFO: Entering the Sandhi Splitter Program"); PRINT_LOG(log_file, log_messg);	*/
		if((rulesfile = fopen(rulesfilename,"r")) == NULL) {
		printf("Could not open : %s", rulesfilename);
	//	sprintf(log_messg, "Could not open rulesfile : %s", rulesfilename); PRINT_LOG(log_file, log_messg);
            exit(0);
	}
/*
	fp=fopen("rls","r");
     	if(fp==NULL)
      	{
	printf("cannot open the rls file",);
	exit(0);
      	}
*/

/* Read The file line by line and  putting into an array */

     while((fgets(ss,100,rulesfile))!= NULL)
	 	{
 	 	ss[strlen(ss)-1] = '\0';
	 	strcpy(rls[size_of_rls],ss);
	 	size_of_rls++;	
       	}
     	fclose(rulesfile);
	
     	for(j=3;j<size_of_rls;j++)
       	{
        	for(i=0;i<10;i++)
           	{
            	strcpy(san[i],"\0");  /* this is to delete previous value */
           	}	
			strcpy(temp,rls[j]);
	 		split_arr(temp,'\t',san);
	 		strcpy(split[j-3].rl_no, san[0]);
	 		strcpy(split[j-3].pat,san[1]);
	 		strcpy(split[j-3].br_pt,san[2]);
	 		strcpy(split[j-3].lft_dlt,san[3]);
	 		strcpy(split[j-3].lft_add,san[4]);
	 		strcpy(split[j-3].rt_dlt,san[5]);
	 		strcpy(split[j-3].rt_add,san[6]);
	 		strcpy(split[j-3].lft_mo_call,san[7]);
	 		strcpy(split[j-3].rt_mo_call,san[8]);
	 		strcpy(split[j-3].lft_cond,san[9]);
	 		strcpy(split[j-3].rt_cond,san[10]);

			if(strcmp(split[j-3].lft_add,"0") == 0) 
            	strcpy(split[j-3].lft_add,"\0");
	 		if(strcmp(split[j-3].rt_add,"0") == 0) 
            	strcpy(split[j-3].rt_add,"\0");
	 		if(strcmp(split[j-3].lft_cond,"0") == 0) 
	   			strcpy(split[j-3].lft_cond,"\0");
	 		if(strcmp(split[j-3].rt_cond,"0") == 0) 
            	strcpy(split[j-3].rt_cond,"\0");
       	}	/*End of outer for loop */
   
       	while(getline(ss,100))
	 	{
	   	ss[strlen(ss)-1] = '\0';
	   	strcpy(orig_word,ss);
	   	flag = 0;
	   	i=0;
	   		while((i<size_of_rls-3) && (!flag))
	    	{
	      	rc=0;
	      	strcpy(matc_pat,"");
	      	strcpy(lft,"");
	      	strcpy(rt,"");
	      	pcre_match(split[i].pat,ss);
	      		if( rc == 1 && flag == 0)
				{
		  		brk = ((int)split[i].br_pt[0])-48;
		  		substr(matc_pat,0,brk,patl);
		  		strcat(lft,patl);
		  		substr(matc_pat,brk,strlen(matc_pat),patr);
		  		strcat(patr,rt);
  		  		strcat(lft,split[i].lft_add);
		  		strcat(split[i].rt_add,patr);
		  		strcpy(lftF,lft);
		  		strcpy(rtF,split[i].rt_add);

	/************** Morph call for left string ************************/

		  	if(split[i].lft_mo_call)
		   	{
			sprintf(log_messg, "INFO: Calling morph Analyser for the Left word."); PRINT_LOG(log_file, log_messg);
		    myget_mo_ana(lftF,lft_ans);
		    lft_ans[strlen(lft_ans)-1] = '\0';
		   	}
		  	else 
            { 
            strcpy(lft_ans,lftF);
            }
			rc=0;
			sprintf(log_messg, "INFO: Going to the pcre_match() to match the condition specified for the Left word and morph Answer."); PRINT_LOG(log_file, log_messg);
		  	pcre_match(split[i].lft_cond,lft_ans);
  	if(( (rc == 1) && (strcmp(split[i].lft_cond,"\0") != 0)) || strcmp(split[i].lft_cond,"\0") ==0)
  	{
		
	/************** Morph call for right string **********************/

		  	if(split[i].rt_mo_call[0] == '1')
		   	{
			sprintf(log_messg, "INFO: Calling morph Analyser for the Right word."); PRINT_LOG(log_file, log_messg);
		   	myget_mo_ana(rtF,rt_ans);
		   	rt_ans[strlen(rt_ans)-1] = '\0';
		   	}
		   	else 
           	{ 
           	strcpy(rt_ans,rtF);  
           	}
			sprintf(log_messg, "INFO: Going to the pcre_match() to match the condition specified for the Right word and morph Answer."); PRINT_LOG(log_file, log_messg);
			pcre_match(split[i].rt_cond,rt_ans);
  			if((rc == 1 && strcmp(split[i].rt_cond,"\0") != 0) || strcmp(split[i].rt_cond,"\0") == 0)
  			{
			printf(" RL-%s Matched:",split[i].rl_no);
			printf(" %s ",lftF);
			printf(" %s\n",rtF);
		/*	if((strcmp(lft_ans,"\0") != 0) && strcmp(rt_ans,"\0") != 0)
		        {
			     // printf("%s",orig_word);
	//printf("Lft_word=%s\n",lftF);
	//printf("Rt_word=%s\n",rtF);
			     // printf(" RL\(");
			     // printf("%s",split[i].rl_no);
			     // printf(")");
			     // printf("%s",lftF);
			     // printf("+");
			     // printf("%s",rtF);
			     // printf(":");
			     // printf("%s",lft_ans);
			     // printf("+");
			     // printf("%s\n",rt_ans);
			     // flag = 1;
		        }*/
			}
  	}
				}  /* End of if rc */
              	strcpy(split[i].rt_add,"\0");
				i++;

	    	} /* End of while(i<size_of_rules-3) */
           //  printf("lft**** = %s\n",lftF);  /*modifed on 040408 */
           //  printf("rt**** = %s\n",rtF);/*modifed on 040408 */

 /*	 if(flag == 0 ) 
           {
	     printf("%s\n",orig_word);
	   }*/


      }/* End of while(getline)*/
  } /* end of main */


int getline(char *line,int max)
  {
    if(fgets(line,max,stdin) == NULL) 
      return 0;
    else 
      return strlen(line);  
  }


/* This function splits the array with a special char given */

void split_arr(char arr[300],char ch,char new[15][50])
    {
	int col=0,k,i;
	int row=0;
	strcpy(new[0],"\0");
	strcat(arr,"\n");
	for(k=0;k<strlen(arr);k++)
	 {
           if(arr[k] == '\n') 
	    {
	      break;
	    }
	   if(arr[k] != ch)
	     {
	       new[row][col]=arr[k];
	       col++;
	     }
	   else
	     {
	       new[row][col]='\0';
	       row++;
	       col=0;
	     }
	 }
	new[row][col]='\0';
	strcpy(new[row+1],"\0");
     }

/* This function is used to match the pcre */

pcre_match(char rrg[30],char rrg1[30])
  {
	sprintf(log_messg, "INFO: pcre_match() started."); PRINT_LOG(log_file, log_messg);
    pcre *re;
    const char *error;
    int erroffset;
    int ovector[OVECCOUNT];
    int i,a,b;
 
    re=pcre_compile(rrg,0,&error,&erroffset,NULL);
exit(100);
    if(re == NULL)
      {
		sprintf(log_messg, "ERROR: pcre compilation failed at offset %d: %s\n.",erroffset, error); PRINT_LOG(log_file, log_messg);
//  	printf("pcre compilation failed at offset %d: %s\n", erroffset , error);
	return 1;
      }

    rc = pcre_exec( re,NULL,rrg1,(int)strlen(rrg1),0,0,ovector,OVECCOUNT);
    if( rc < 0)
    {
     	switch(rc)
	   	{
      	case PCRE_ERROR_NOMATCH:
				matc_pat[0]='\0';
	       		break;
	    defafult:	
				sprintf(log_messg, "ERROR: pcre Matching error %d\n.", rc); PRINT_LOG(log_file, log_messg);
			//	printf("Matching error %d\n", rc);
        		break;
  	  	}
	return 1;
    }
    if( rc == 0)
      {
	rc = OVECCOUNT/3;
	sprintf(log_messg, "ERROR: ovector has only room for %d capture substring\n.", rc-1); PRINT_LOG(log_file, log_messg);
	// printf("ovector only has room for %d capture substring\n", rc-1);
      }
    for( i=0; i<rc; i++)
      {
    char *substring_start = rrg1 + ovector[2*i];
	int substring_length = ovector[2*i+1] - ovector[2*i];

	strncpy(matc_pat,substring_start,substring_length);
	matc_pat[substring_length]='\0';
	
	a = strlen(matc_pat); 
	substr(substring_start,a,strlen(substring_start),rt);
	
	b = ovector[2*i];
	strncpy(lft,rrg1,b);
	lft[b]='\0';
      }

   }

/* substr Function definition */

  substr(char word1[20],int start, int last,char str[25])	
    {		
	int i,p;
	i=strlen(word1);
	if(last>i) 
          {
            printf("last = %d: -sorry!\n",last); 
          }
	else
          {
	    for(p=0;p<=last-1;p++)
	      {
	        str[p]=word1[start];
		start++;
	      }
          }
	str[p]='\0';	
    }
