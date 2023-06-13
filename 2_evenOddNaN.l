/*Lex program to take check whether the given number
is even or odd */


%{
#include<stdio.h>
int i;
%}
reg [0-9]+
%%
{reg} {i=atoi(yytext);
		if(i%2==0)
			printf("Even");
		else
		printf("Odd");}
.* {printf("Not a Number");}
%%
int yywrap(){}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
printf("Enter the input:\n");
yylex();
return 0;
}
