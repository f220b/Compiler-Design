%{
#include<stdio.h>
int ac=0,bc=0;
%}
%%
a {ac++;}
b {bc++;}
\n {if((ac%2==0) && (bc%2==0))
 {ac=0;
 bc=0;
 printf("String is valid\n");}
 else {
 ac=0;
 bc=0;
 printf("String is not valid.\n");}}
exit(0);
%%
int yywrap() {return (1);}
int main()
{
printf("Ashish Upadhyay, CST SPL1, 16\n");
printf("Enter the string:\n");
yylex();
return 0;
}
