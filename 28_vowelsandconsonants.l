%{
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int yywrap(void){
return 1;
}
int main(){
printf("Enter Input:");
yylex();
printf("Vowels = %d\n",v);
printf("Consonants = %d\n",c);
}