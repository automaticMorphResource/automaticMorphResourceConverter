/* This program reads rule from the table And if rule matches then it print the morph and rule no */

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include"split_arr.c"
#include"pcre_match.c"
#include"get_mo_ana.c"
#include"substr.c"
int rc;
//extern int rc;
char matc_pat[30];    /* This four global variables are used in pcre_match.c */
char lft[30];
char rt[30];

struct sandhi
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
	char rt_cond[30];
};
main(int argc ,char *argv[])
{
	char ss[100],rls[700][100],temp[100],san[15][50],orig_word[100];
	int i,j,debug ,size_of_rls=0,flag,brk;
	char patl[20],patr[20],lftF[30],rtF[30],lft_ans[200],rt_ans[150];

	FILE *fp;

	struct sandhi split[700];

	//	fp=fopen("/home/guest/santosh/sandhi/COM/rls","r");
	//	fp=fopen("/home/hari/sandhi/com/rls","r");

	fp=fopen("rls","r");
	if(fp==NULL)
	{
		printf("File cannot be opened\n");
		exit(0);
	}


	/* Read The file line by line and  putting into an array */

	while((fgets(ss,100,fp))!= NULL)
	{
		ss[strlen(ss)-1] = '\0';
		strcpy(rls[size_of_rls],ss);
		size_of_rls++;	
	}
	fclose(fp);


	for(j=3;j<size_of_rls;j++)
	{
		for(i=0;i<10;i++)
		{ strcpy(san[i],"\0");}   // this is for delete previous value  

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


		if(strcmp(split[j-3].lft_add,"0") == 0) strcpy(split[j-3].lft_add,"\0");
		if(strcmp(split[j-3].rt_add,"0") == 0) strcpy(split[j-3].rt_add,"\0");
		if(strcmp(split[j-3].lft_cond,"0") == 0) strcpy(split[j-3].lft_cond,"\0");
		if(strcmp(split[j-3].rt_cond,"0") == 0) strcpy(split[j-3].rt_cond,"\0");
	}


	//fp = fopen("/home/guest/santosh/sandhi/COM/rls","r");

	//while((fgets(ss,100,fp))!= NULL)

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

				if(debug)
				{
					printf("RL");
					printf("%s",split[i].rl_no);
					printf(" pattern ");
					printf("%s",matc_pat);
					printf(" Matched\n");

				}

				//if(strcmp(split[i].br_pt,"1") == 0) brk = 1;
				//else brk = 0;
				brk = ((int)split[i].br_pt[0])-48;
				substr(matc_pat,0,brk,patl);
				strcat(lft,patl);
				substr(matc_pat,brk,strlen(matc_pat),patr);
				strcat(patr,rt);

				//substr(lft,0,strlen(lft)-(split[i].lft_dlt),patl)
				strcat(lft,split[i].lft_add);
				//substr(rt,(split[i].rt_dlt),strlen(rt),patr);
				//strcat(split[i].rt_add,patr);

				strcat(split[i].rt_add,patr);

				strcpy(lftF,lft);
				strcpy(rtF,split[i].rt_add);
				//  strcpy(patr,rtF);	
				if(debug)
				{
					printf("lft = %s\n",lftF);
					printf("rt = %s\n",rtF);
				}

				/************** Morph call for left string ************************/

				if(split[i].lft_mo_call)
				{
					get_mo_ana(lftF,lft_ans);
					lft_ans[strlen(lft_ans)-1] = '\0';
					if(strcmp(lft_ans,"\0") == 0)
					{
						if(debug) { printf("Morph failed for left word %s\n",lftF); }
					}
				}
				else { strcpy(lft_ans,lftF); }

				rc=0;
				pcre_match(split[i].lft_cond,lft_ans);
				if(((rc == 1 ) && ( strcmp(split[i].lft_cond,"\0") != 0)) || strcmp(split[i].lft_cond,"\0") ==0)
				{
					if(debug) { printf("Left cond %s satisfied for rule %s\n",split[i].lft_cond,split[i].rl_no); }

					/******** Call morph for right string ***********/

					if(split[i].rt_mo_call[0] == '1')
					{
						get_mo_ana(rtF,rt_ans);
						rt_ans[strlen(rt_ans)-1] = '\0';
						if(strcmp(rt_ans,"\0") == 0)
						{
							if(debug) { printf("Morph failed for right word %s\n",rtF); }
						}
					}
					else { strcpy(rt_ans,rtF);  }

					pcre_match(split[i].rt_cond,rt_ans);
					if((rc == 1 && strcmp(split[i].rt_cond,"\0") != 0) || strcmp(split[i].rt_cond,"\0") == 0)
					{
						if(debug) { printf("Right cond %s satisfied for rule %s\n",split[i].rt_cond,split[i].rl_no); }

						if((strcmp(lft_ans,"\0") != 0) && strcmp(rt_ans,"\0") != 0)
						{
							printf("%s",orig_word);
							printf(" RL\(");
							printf("%s",split[i].rl_no);
							printf(")");
							printf("%s",lftF);
							printf("+");
							printf("%s",rtF);
							printf(":");
							printf("%s",lft_ans);
							printf("+");
							printf("%s\n",rt_ans);
							flag = 1;
						}
					}

					else { 
						if(debug) { printf("Rt cond %s not satisfied for rule %d\n",split[i].rt_cond,split[i].rl_no); }

						if(debug) { printf("rt morph answer %s\n",rt_ans); }

					}
				}		

				else { 

					if(debug) { printf("lft cond %s not satisfied for rule %d\n",split[i].lft_cond,split[i].rl_no); }

					if(debug) { printf("rt morph answer %s\n",rt_ans); }

				}

			}  /* End of if rc */
			strcpy(split[i].rt_add,"\0"); // This added temporary (santosh)	
			//   strcpy(split[i].rt_cond,"\0"); // This added temporary (santosh)	
			//   strcpy(split[i].rt_cond," "); // This added temporary (santosh)	
			i++;

		} /* End of while */	


		if(flag == 0 ) {
			printf("%s\n",orig_word);
		}	

	}
} /* end main */

int getline(char *line,int max)
{
	if (fgets(line,max,stdin) == NULL) return 0;
	else return strlen(line);                                                    }
