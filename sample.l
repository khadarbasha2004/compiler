%%
(stdio.h|conio.h) {printf("%s is a standard library\n",yytext);}
(include|int|main|void|printf) {printf("%s is a keyword\n",yytext);}
[a-zA-Z]|([a-zA-z]|[0-9])* {printf("%s is a identifier\n",yytext);}
[0-9]+ {printf("%s is a digit\n",yytext);}
\"(\\.|[^"\\])*\" {printf("%s is a string literal\n",yytext);}
.|\n { }
%%
int yywrap(void)
{
return 1;
}
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
fclose(yyin);
}
