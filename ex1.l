%%
[0-9]+ {printf("Digit");}
.* {printf("Not a Digit");}
%%
int yywrap(void){
return 1;
}
int main(){
printf("Enter Input:");
yylex();
}