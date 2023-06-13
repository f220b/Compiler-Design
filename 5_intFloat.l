/*Write a Lex program to print integer and float values.*/


%{
#include<stdio.h>
%}


DIGIT [0-9]


%%
{DIGIT}+ {printf("Integer Value.");}
{DIGIT}+?\.{DIGIT}+ {printf("Float Value.");}
%%



int yywrap()
{
return 1;
}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
yylex();
return 0;
}
