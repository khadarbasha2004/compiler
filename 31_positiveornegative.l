%%
^[-][0-9]+ {printf("Negative");}
.[0-9]+ {printf("Poitive");}
%%
int yywrap(void){
return 1;
}
int main(){
printf("Enter Input:");
yylex();
}