%%
[A-Z]+[\t\n ] { printf("%s is a capital word\n",yytext); }
.  ;
%%
int yywrap(void){
return 1;
}
int main(){
printf("Enter string:");
yylex();
}