/*Develop a DFA program for the given input string to have 'a' as the third last element.*/


%{
#include<stdio.h>
%}
reg (a|b)*a(aa|ab|ba|bb)
%%
{reg} printf("The given input string %s is correct.\n",yytext);
.* printf("%s is invalid.\n",yytext);
%%
int yywrap() {return 1;}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
printf("Enter the string: ");
yylex();
return 0;
}
