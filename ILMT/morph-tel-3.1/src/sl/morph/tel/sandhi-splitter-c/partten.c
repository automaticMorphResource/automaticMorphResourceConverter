#include<stdio.h>
#define LINE_LENGTH 150 
#define MATCH_LENGTH 30
#define REPLACE_LENGTH 30
/*
main()
{
	char line[LINE_LENGTH];
	char match_part[MATCH_LENGTH];
	char replacement[REPLACE_LENGTH];
	printf("Enter The string\n");
	scanf("%s",line);
	gets(line);
	printf("Enter the parten to match\n");
	gets(match_part);
	printf("Enter the parten to replacement\n");
	gets(replacement);
	replace(line,match_part,replacement);
	printf("%s\n",line);
}
*/
	
	replace(char str[LINE_LENGTH],char part[MATCH_LENGTH],char replace[REPLACE_LENGTH])

    {		
	char temp[MATCH_LENGTH];
	int i,j,k,pos,pos1,last,diff;
	//temp=(char *) malloc (strlen(part));
	pos=0;
	for(i=0;i<strlen(str);i++)
	{
       	   k=0;
	   for(j=i;j<strlen(part)+i;j++)
	   {
	    temp[k]=str[j];  /* temporary keeps in array to check for matching*/
	     k++;
	   }
	temp[k] = '\0';	
	if(strcmp(temp,part)==0)
	{

/* if the length of the replace part is length of the partern */	
	 if((strlen(part))==(strlen(replace)))
	   {

		for(k=0;k<strlen(replace);k++)
		  {
			str[pos+k]=replace[k];
		   }
	    }
	  else if((strlen(part))<(strlen(replace))) /* if partern < replace */
	   {
	      diff=(strlen(replace))- (strlen(part));
		last=strlen(str);
     /* First allocate space for additional length */
		for(k=pos+(strlen(replace));k<=(strlen(str)+diff);k++)
		   {
			str[last+diff]=str[last];
			last--;
		
		   }
   /* replacing the partern */
		for(k=0;k<strlen(replace);k++)
		{
	       	   str[pos+k]=replace[k];
		   //end++;
	        } 
	   }
	  /* if partern size is greater than the replacement size */
	  
		else if((strlen(part))>(strlen(replace)))  
	   {
		diff=(strlen(part))-(strlen(replace));
	/* replacing the string */	
		for(k=0;k<strlen(replace);k++)
		{
	       	   str[pos+k]=replace[k];
		}
		pos1=strlen(replace);
     /* recovering the vacant space */
		for(k=pos+(strlen(replace));k<(strlen(str));k++)
	 	{
		   str[pos+pos1]=str[pos+pos1+diff];
		   pos1++;
		}	
	    }		
	   	
	}
	   pos++;
      }
}
