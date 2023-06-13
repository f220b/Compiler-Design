/*Design a DFA in lex code which accepts string having even number of a's and odd number of b's
over input alphabet a,b.*/



%{
#include<stdio.h>
%}
reg (aa)*(bb)*b
%%

{reg} printf("%s is valid.\n",yytext);
.* printf("%s is invalid.\n",yytext);
%%

int yywrap() {return 1;}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
printf("Enter the String: ");
yylex();
return 0;
}
