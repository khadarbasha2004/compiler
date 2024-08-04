%{
int tag;
%}
%%
"<"[^>]*>  { tag++; printf("%s \n", yytext); }
.|\n { }
%%
int yywrap()
{
return 1;
}
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
printf("No of Tags = %d\n",tag);
fclose(yyin);
}
