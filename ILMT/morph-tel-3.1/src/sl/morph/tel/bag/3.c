30,31d29
< //#include "./new_ss.c"
< 
107,108c105
< struct ans_struct ans_ar[BigArray],ans_ar_left[BigArray],ans_ar_right[BigArray];
< int no_of_ans, no_of_ans_left,no_of_ans_right;
---
> struct ans_struct ans_ar[BigArray];
125c122
< //	struct ans_struct ans_ar[2];
---
> 
134d130
< int flag_unk =0;
405c401
< fun_morph(morph,fp_pdgm,DBM_FLAG,db_dict,db_suff,ans_ar,&no_of_ans);
---
> fun_morph(morph,fp_pdgm,DBM_FLAG,db_dict,db_suff,ans_ar);
408,413d403
< struct sandhi_rule_pool rule_pool;
< read_rules ("../../../../bin/sl/morph/tel/rls", &rule_pool);
< char lft_word[50],rt_word[50];
< 
< memset(lft_word,'\0',50);
< memset(rt_word, '\0',50);
424,434d413
< sprintf(logmsg, "INFO: entered into not punctuation"); PRINT_LOG(log_file, logmsg);
< sprintf(logmsg, "INFO: left word and right word before split |%s|%s|",lft_word,rt_word); PRINT_LOG(log_file, logmsg);
< int ret_status=0;
< ret_status = sandhi_split (morph, &rule_pool, fp_pdgm, DBM_FLAG, db_dict,db_suff, lft_word, rt_word,ans_ar_left,ans_ar_right,&no_of_ans_left,&no_of_ans_right);
< sprintf(logmsg, "INFO: left word and right word after sandhi split,now in main |%s|%s|%s|%s|",lft_word,rt_word,ans_ar_left[0].root,ans_ar_right[0].root); PRINT_LOG(log_file, logmsg);
< 
< if( ret_status == 1 && ans_ar_left[0].offset != -2 && ans_ar_right[0].offset !=-2 && lft_word != '\0' && rt_word != '\0')
< {
< flag_unk=1;
< }
< else {
448d426
< }
453c431
< if( ans_ar[0].offset != -2 || flag_unk == 1 )
---
> else
459,460d436
< sprintf(logmsg, "INFO: left word and right word after sandhi split,now in main |%s|%s|%s|%s|",lft_word,rt_word,ans_ar_left[0].root,ans_ar_right[0].root); PRINT_LOG(log_file, logmsg);
< 
464,488c440
< //while(ans_ar[loop1].offset !=-2)
< //while(ans_ar[loop1].offset !=-2 || ans_ar_left[0].offset !=-2)
< int word_count=0;
< while(1) {
< //										printf("next word is goint to print\n");
< int loopsize=0;
< struct ans_struct* ans_ar_tmp;
< if( flag_unk == 0 && word_count ==0 ){
< ans_ar_tmp = ans_ar;
< loopsize = no_of_ans;
< }
< else if( flag_unk == 1 && word_count == 0 ){
< ans_ar_tmp = ans_ar_left;
< loopsize = no_of_ans_left;
< }
< else if( flag_unk == 1 && word_count == 1 ){
< ans_ar_tmp = ans_ar_right;
< loopsize = no_of_ans_right;
< }
< else 
< break;
< printf("now the word is %s\n", ans_ar_tmp[0].root);
< word_count++;
< loop1 = 0;
< while( loop1< loopsize )
---
> while(ans_ar[loop1].offset !=-2)
490d441
< //										printf("answer going ot print\n");
494c445
< if(ans_ar_tmp[loop1].offset == -1)  /* checks for Avy */
---
> if(ans_ar[loop1].offset == -1)  /* checks for Avy */
497c448
< printf("Avy\n%s\n",ans_ar_tmp[loop1].root);
---
> printf("Avy\n%s\n",ans_ar[loop1].root);
499c450
< printf("%s{Avy}",ans_ar_tmp[loop1].root);
---
> printf("%s{Avy}",ans_ar[loop1].root);
501c452
< if(ans_ar_tmp[loop1].offset == -3) /* Case of Numeral */
---
> if(ans_ar[loop1].offset == -3) /* Case of Numeral */
504c455
< printf("Avy\n%s\n",ans_ar_tmp[loop1].root);
---
> printf("Avy\n%s\n",ans_ar[loop1].root);
506,507c457,458
< if(ispunct(ans_ar_tmp[loop1].root[0])) {
< strcpy(root, ans_ar_tmp[loop1].root); strcpy(cat, "punc");
---
> if(ispunct(ans_ar[loop1].root[0])) {
> strcpy(root, ans_ar[loop1].root); strcpy(cat, "punc");
510d460
< strcpy(feature_str,"");
511a462,576
> 
> if(!strcmp(root,"!")) { 
> strcpy(root,"&exm;");
> }
> if(!strcmp(root,".")) { 
> strcpy(root,"&dot;");
> }
> if(!strcmp(root,",")) { 
> strcpy(root,"&comma;");
> }
> if(!strcmp(root,"<")) { 
> strcpy(root,"&lang;");
> }
> if(!strcmp(root,">")) { 
> strcpy(root,"&rang;");
> }
> if(!strcmp(root,"/")) { 
> strcpy(root,"&frasl;");
> }
> if(!strcmp(root,"?")) { 
> strcpy(root,"&qus;");
> }
> if(!strcmp(root,";")) { 
> strcpy(root,"&scol;");
> }
> if(!strcmp(root,":")) { 
> strcpy(root,"&col;");
> }
> if(!strcmp(root,"\"")) { 
> strcpy(root,"&bdquo;");
> }
> if(!strcmp(root,"'")) { 
> strcpy(root,"&apos;");
> }
> if(!strcmp(root,"[")) { 
> strcpy(root,"&lsbrs;");
> }
> if(!strcmp(root,"]")) { 
> strcpy(root,"&rsbrs;");
> }
> if(!strcmp(root,"{")) { 
> strcpy(root,"&lfbrs;");
> }
> if(!strcmp(root,"}")) { 
> strcpy(root,"&rfbrs;");
> }
> //if(!strcmp(root,"\/")) { 
> //strcpy(root,"&brasl;");
> //}
> if(!strcmp(root,"|")) { 
> strcpy(root,"&pipe;");
> }
> if(!strcmp(root,"=")) { 
> strcpy(root,"&equl;");
> }
> if(!strcmp(root,"+")) { 
> strcpy(root,"&add;");
> }
> if(!strcmp(root,"-")) { 
> strcpy(root,"&minus;");
> }
> if(!strcmp(root,"_")) { 
> strcpy(root,"&unds;");
> }
> if(!strcmp(root,"(")) { 
> strcpy(root,"&rcbrs;");
> }
> if(!strcmp(root,")")) { 
> strcpy(root,"&lcbrs;");
> }
> if(!strcmp(root,"*")) { 
> strcpy(root,"&lowast;");
> }
> if(!strcmp(root,"&")) { 
> strcpy(root,"&amp;");
> }
> if(!strcmp(root,"^")) { 
> strcpy(root,"&circ;");
> }
> if(!strcmp(root,"%")) { 
> strcpy(root,"&perc;");
> }
> if(!strcmp(root,"$")) { 
> strcpy(root,"&dol;");
> }
> if(!strcmp(root,"#")) { 
> strcpy(root,"&hash;");
> }
> if(!strcmp(root,"\@")) { 
> strcpy(root,"&atrat;");
> }
> if(!strcmp(root,"~")) { 
> strcpy(root,"&tilde;");
> }
> if(!strcmp(root,"`")) { 
> strcpy(root,"&acute;");
> }
> if(!strcmp(root,"‘")) { 
> strcpy(root,"&lsquo;");
> }
> if(!strcmp(root,"’")) { 
> strcpy(root,"&rsquo;");
> }
> if(!strcmp(root,"‚")) { 
> strcpy(root,"&sbquo;");
> }
> if(!strcmp(root,"\“")) { 
> strcpy(root,"&ldquo;");
> }
> if(!strcmp(root,"\”")) { 
> strcpy(root,"&rdquo;");
> }
> if(!strcmp(root,"...")) { 
> strcpy(root,"&hellep;");
> }
521c586
< strcpy(root, ans_ar_tmp[loop1].root); strcpy(cat, "num");
---
> strcpy(root, ans_ar[loop1].root); strcpy(cat, "num");
540d604
< 
551c615
< resufun_hori(ans_ar_tmp[loop1].root,ans_ar_tmp[loop1].pdgm,ans_ar_tmp[loop1].offset,ans_ar_tmp[loop1].aux_verb,root, cat, g,n,p, kase,cm, tam );
---
> resufun_hori(ans_ar[loop1].root,ans_ar[loop1].pdgm,ans_ar[loop1].offset,ans_ar[loop1].aux_verb,root, cat, g,n,p, kase,cm, tam );
553,556d616
< //
< //													                                                                                                        resufun_hori(ans_ar_right[loop1].root,ans_ar_right[loop1].pdgm,ans_ar_right[loop1].offset,ans_ar_right[loop1].aux_verb,root, cat, g,n,p, kase,cm, tam );
< 
< //													sprintf(logmsg, "INFO: Calling resufun_hori(),|root=%s|cat=%s|g=%s|n=%s|p=%s|case=%s|cm=%s|suff=%s|", root, cat, g, n, p, kase, cm, tam ); PRINT_LOG(log_file, logmsg);
686,689c746,749
< strcpy(ans_ar_tmp[loop1].root,"");
< ans_ar_tmp[loop1].offset = 0;
< strcpy(ans_ar_tmp[loop1].aux_verb,"");
< strcpy(ans_ar_tmp[loop1].pdgm,"");
---
> strcpy(ans_ar[loop1].root,"");
> ans_ar[loop1].offset = 0;
> strcpy(ans_ar[loop1].aux_verb,"");
> strcpy(ans_ar[loop1].pdgm,"");
692,695c752
< //										printf("first answer printed\n");
< }
< //									printf("first word completed\n");
< }
---
> } 
