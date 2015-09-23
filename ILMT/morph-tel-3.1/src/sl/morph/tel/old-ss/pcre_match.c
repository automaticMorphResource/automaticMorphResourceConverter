#include<stdio.h>
#include<string.h>
//#include<pcre.h>
#include"/home/hari/pcre-7.6/pcre.h"
//#include"/home/hari/pcre-7.6/pcre_internal.h"
//#include"pcre.h"
//#include"substr.c"
#define OVECCOUNT 30
extern int rc;
extern char matc_pat[30];
extern char lft[30];
extern char rt[30];

/*
 main(int argc , char **argv)
{
char rexp[30],partten[30];
printf("Enter a regular expr to\n");
gets(rexp);
printf("Enter a partten\n");
gets(partten);

pcre_match(rexp,partten,matc_pat);
printf("%s\n",matc_pat);

}

*/
pcre_match(char rrg[30],char rrg1[30])

{

pcre *re;
const char *error;
int erroffset;
int ovector[OVECCOUNT];
int i,a,b;

	re=pcre_compile(rrg,0,&error,&erroffset,NULL);

	if (re == NULL)
	{
	printf("pcre compilation failed at offset %d: %s\n", erroffset , error);
	return 1;
	}

	rc = pcre_exec( re,NULL,rrg1,(int)strlen(rrg1),0,0,ovector,OVECCOUNT);
	if ( rc < 0)
	{
	 switch(rc)
	   {
    
            	//case PCRE_ERROR_NOMATCH: printf("No match\n");
		case PCRE_ERROR_NOMATCH: matc_pat[0]='\0';
	  break;
		defafult: printf("Matching error %d\n", rc); break;
  	   }
	return 1;
	}
//	printf("match succeeded\n");

	if ( rc == 0)
	{
	rc = OVECCOUNT/3;
	printf("ovector only has room for %d capture substring\n", rc-1);
	}
	
	for ( i=0; i<rc; i++)
	{
	char *substring_start = rrg1 + ovector[2*i];
	int substring_length = ovector[2*i+1] - ovector[2*i];
	//printf("%2d: %.*s\n" , i,substring_length,substring_start);
	//printf("%s\n",substring_start);

	strncpy(matc_pat,substring_start,substring_length);
	matc_pat[substring_length]='\0';
	
	a = strlen(matc_pat); 
	substr(substring_start,a,strlen(substring_start),rt);
	
	b = ovector[2*i];
	strncpy(lft,rrg1,b);
	lft[b]='\0';
	}

	//return 0;
   }



