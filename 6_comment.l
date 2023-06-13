/*Design a lex code to remove the comment section from a C program during the run time.*/



%{
#include<stdio.h>
%}


%%
\/\/(.*) {};					
\/\*(.*\n)*.*\*\/ {};			
%%


int yywrap(){return(1);}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
extern FILE *yyin;
yyin=fopen("input6.txt","r");
yylex();
return 0;
}
