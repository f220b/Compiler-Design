/*Design a lex code to identify and print operators, separators, keywords, identifiers.*/
%{
#include<stdio.h>
%}
DIGIT [0-9]
NUMBER {DIGIT}+
REAL {DIGIT}+"."{DIGIT}+
TEXT [a-z A-Z]+
TEXTNOS [a-z A-Z 0-9]
CONDITIONAL "if"|"else"|"else if"|"switch"|"case"
KEYWORD "break"|"continue"|"goto"|"printf"|"scanf"|"sprintf"|"sscanf"|"fopen"|"fwrite"|"fread"|"fclose"|"write"|"read"|"open"|"close"|"return"|"int"|"float"|"char"|"unsigned"|"signed"|"short"|"long"|"double"
ITERATOR "for"|"while"|"do"
PREPROCESSOR "#"|"#line"|"undef"|"#error"|"#elseif"|"#else"|"#endif"|"#if"|"#define"|"#include"|"#pragma"|"#ifdef"|"#ifndef"
DELIMITER [;\:\\t\\n\(\)\'\']
IDENTIFIER [a-z A-Z]{TEXTNOS}*
FORMATSPEC "%"{TEXTNOS}+
FILES "<"{IDENTIFIER}.h">"
COMMENT "/*"[a-z A-Z 0-9 \t \n ; . ~ ! @ # $ * ( ) _ + = < > ? , "{ }]*
AOP "+"|"-"|"*"|"/"
BLOCK_BEGIN "{"
BLOCK_END "}"
UNARY "++"|"--"
LOP "&"|"|"|"&&"|"~"|"||"|"<"|">"|"<="|">="
FUNC {IDENTIFIER}+"("{DELIMITER}*{TEXT}{TEXTNOS}*{DELIMITER}*")"
%%
{CONDITIONAL} {printf("%s is a conditional\n",yytext);}
{ITERATOR} {printf("%s is a iterator\n",yytext);}
{DIGIT} {printf("%s is a digit\n",yytext);}
{NUMBER} {printf("%s is a number\n",yytext);}
{REAL} {printf("%s is a real\n",yytext);}
{PREPROCESSOR} {printf("%s is a preprocessor\n",yytext);}
{DELIMITER} {printf("%s is a delimiter\n",yytext);}
{KEYWORD} {printf("%s is a keyword\n",yytext);}
{IDENTIFIER} {printf("%s is a identifier\n",yytext);}
{COMMENT} {printf("%s is a comment\n",yytext);}
{AOP} {printf("%s is an algebraic operator\n",yytext);}
{LOP} {printf("%s is a logical operator\n",yytext);}
{BLOCK_BEGIN} {printf("%s is a begin block\n",yytext);}
{BLOCK_END} {printf("%s is a end block\n",yytext);}
{FILES} {printf("%s is a file\n",yytext);}
{UNARY} {printf("%s is a unary\n",yytext);}
{FUNC} {printf("%s is a function\n",yytext);}
{FORMATSPEC} {printf("%s is a format specifier\n",yytext);}
%%
int yywrap() {return(1);}
int main()
{
printf("Parth Sarthi, CST SPL1, 51\n");
extern FILE *yyin;
yyin=fopen("input8.txt","r");
yylex();
return 0;
}
