%{
int com=0;
%}
%s COMMENT
%%
"/" {BEGIN COMMENT;}
"/" {BEGIN 0; com++;}
\n {com++;}
. {;}
//.* {; com++;}
.|\n {fprintf(yyout,"%s",yytext);}
%%
void main(int argc, char *argv[])
{
if(argc!=3)
{
printf("usage : a.exe input.c output.c\n");
exit(0);
}
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
printf("\n number of comments are = %d\n",com);
}
int yywrap()
{
return 1;
}