/*Write a lex code to accept even numbers of a and b using regex and dfa.*/


%{
#include<stdio.h>
%}
reg aa|bb|(ab|ba)(aa|bb)*(ab|ba)
%%
{reg}* {printf("String is valid\n");}
.* {printf("String is not valid\n");}
%%
int yywrap() {return (1);}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
printf("Enter the string:\n");
yylex();
return 0;
}
