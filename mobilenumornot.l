%%
[91]{2}[ ][0-9]{10} {printf("Valid");}
.* {printf("Not valid");}
%%
int yywrap(void){
return 1;
}
int main(){
printf("Enter Input:");
yylex();
}