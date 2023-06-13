/*Write a lex code to extract all the html tags from a file and print in a new output file.*/


%{
#include <stdio.h>
%}

%%
"<"[^>]*">" { fprintf(yyout, "%s\n", yytext); }
. ;

%%

int main(int argc, char*argv[])
{
	printf("Parth Sarthi, CST SPL1, 51\n");
	extern FILE *yyin,*yyout;
	yyin= fopen("input7.txt","r");
	yyout=fopen("output7.txt","w");
	yylex();
	return 0;
}
