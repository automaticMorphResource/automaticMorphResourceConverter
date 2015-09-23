#include<stdio.h>
#include<string.h>
//#include"..\..\require\defn.h"
#include"defn.h"
#include"partten.c"
//#include"rm_yv.c"
/*
main()
{
	char *word1,ans1[150];
	printf("Enter a string\n");
	scanf("%s",word1);
	get_mo_ana(word1,ans1);
	printf("%s",ans1);
}
*/
	get_mo_ana(char *word,char ans[MORPH_SIZE])
     {
	char in[MORPH_SIZE],ch;
	int i=0,flag,j;
	FILE *fp,*fp1;
	fp=fopen("s1","w");
	if(fp==NULL)
	{
	  printf("FIle canot be opened \n");
	  exit(0);
	}	
	while(word[i] !='\0')
	   {
		fputc(word[i],fp);
		i++;
	    }	
	fclose(fp);
	if(word[strlen(word)-1] != '?')
	  {
             /* system("C:\\TELMORPH\\shell\\moh.bat < s1 > s1.mo");*/
              system("moh.sh < s1 > s1.mo");
	  }
	else
	  {
	    for(i=0;i<6;i++)
	    {
		if(i==0)
		{
		   replace(word,"?","u");
		   flag=1;
		}
		if(i==1)
		{
		   replace(word,"?","i");
		   flag=1;

		}
		if(i==2)
		{
		   replace(word,"?","a");
		   flag=1;
		}
		if(i==3)
		{
		  replace(word,"?","eV");
		  flag=1;
		}
		if((i==4) && (word[strlen(word)-2]=='n') && (word[strlen(word)-1]=='?'))
		{
		  replace(word,"n?","n");
		  flag=1;
		}
		if((i==5) && ((word[strlen(word)-2]=='y') || (word[strlen(word)-2]=='v') || (word[strlen(word)-2]=='n') && (word[strlen(word)-1]=='?')))
		{
		  replace(word,"y?","");
		  replace(word,"v?","");
		  replace(word,"n?","");
		  //word[strlen(word)-1]='\0';
		  flag=1;
		}
		if(flag==1)
		 {
		    j=0;
		    fp=fopen("s1","w");
		    if(fp==NULL)
		     {
	  	    	printf("FIle canot be opened \n");
	  	    	exit(0);
		     }	
		     while(word[j] !='\0')
	   	    {
		   	fputc(word[j],fp);
		   	j++;
	    	    }
	   	    fclose(fp);
               /* system("C:\\TELMORPH\\shell\\moh.bat < s1 > s1.mo ");*/
                system("moh.sh < s1 > s1.mo ");
		 flag=0;
		
		} /*end of if(flag) */
		
		/* Donot allow for multiple answer */
		
		j=0;
		fp1=fopen("s1.mo","r");
		if(fp1==NULL)
		  {
		     printf("File cont opened\n");
		   }
		while((ch=fgetc(fp1)) != EOF)
		{  
		   in[j]=ch;
		    j++;
		}
	        if(strcmp(in,"\n")!=0) break;
		fclose(fp1);
	

	    } /* End of for loop */
	 } /* End of else*/
	fp=fopen("s1.mo","r");
 	i=0;
	while((ch=fgetc(fp)) != EOF)
		{
		 ans[i]=ch;
		i++;
		}
		ans[i]='\0';
	fclose(fp);
}
