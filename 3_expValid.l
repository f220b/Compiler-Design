/*Write a lex code to identify whether a given expression is valid or
not.*/



%{
#include<stdio.h>
#include<stdlib.h>
int c,d,bo=0,bc=0;
%}


operand [a-zA-Z0-9]+
operator [\+\-\/\*]


%%
{operator} {d++;printf("%s is an operator\n",yytext);}
{operand}  {c++;printf("%s is an operand\n",yytext);}
"(" {bo++;}
")" {bc++;}
\n {if((bo==bc) && (c>d)) {printf("Valid Expression\n");}
    else  {printf("Invalid Expression.\n");}
}
%%
int yywrap(){return(1);}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
printf("Enter the expression: \n");
yylex();
return 0;
}
