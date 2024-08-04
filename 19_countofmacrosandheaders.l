%{
int header;
int macro;
%}
%%
^#define {macro++;}
^#include {header++;}
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
printf("No of Macros = %d\n",macro);
printf("No of Headers = %d\n",header);
fclose(yyin);
}
