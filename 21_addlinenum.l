%{
int lineno;
%}
%%
^(.*)\n printf("%4d\t%s", ++lineno, yytext);
%%
int yywrap()
{
return 1;
}
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
fclose(yyin);
}
