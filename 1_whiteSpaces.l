/*Lex program to take input from file and
remove multiple spaces, newline and tab
and write output in a separate file*/



%{
	#include<stdio.h>
%}
%%
[ \n\t]+ {}
.	 { fprintf(yyout, "%s", yytext); }
%%
int yywrap() {return (1);}
int main()
{
	printf("Parth Sarthi, CST SPL1, 51\n");
	extern FILE *yyin, *yyout;
	yyin = fopen("input.txt", "r");
	yylex();
	printf("\n");
	return 0;
}

