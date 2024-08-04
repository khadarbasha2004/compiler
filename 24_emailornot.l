%%
[a-z.0-9]+@[a-z]+".com"|".in" {printf("Valid");}
.* {printf("Not valid");}
%%
int yywrap(void){
return 1;
}
int main(){
printf("Enter Input:");
yylex();
}