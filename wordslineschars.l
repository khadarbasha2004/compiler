%{
int nline,nword,nchar; 
%}
%%
\n { nline++; nchar++; }
[^ \t\n]+ { nword++, nchar += yyleng; }
. { nchar++; }
%%
int yywrap(void){
return 1;
}
int main(int x,char *y[]){
yyin=fopen(y[1], "r");
yylex();
printf("No of lines = %d\n",nline);
printf("No of words = %d\n",nword);
printf("No of character = %d\n",nchar);
fclose(yyin);
}