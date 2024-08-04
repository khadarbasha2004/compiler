%{
int cnt=0;
%}
%%
[0-9]+|[0-9]+.[0-9]+ {cnt++;printf("%s is a constant\n",yytext);}
. {}
%%
int yywrap()
{
return 1;
}
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
printf("No of Constants = %d",cnt);
fclose(yyin);
}
