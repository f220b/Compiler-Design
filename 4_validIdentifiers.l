/*Write a lex program to identify and print valid identifiers of C or C++ in a given input pattern.*/
%{
#include<stdio.h>
int count=0;
%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned ;

[a-zA-Z_][a-zA-Z_0-9]* {fprintf(yyout,"%s is Identifier\n",yytext);count++;}   

[0-9][a-zA-Z_0-9]* {fprintf(yyout,"%s is Not a Identifier\n",yytext);}

.|\n ; 
%%
int yywrap()					
{
return 1;
}
int main()
{
    printf("Parth Sarthi, CST SPL1, 51\n");
    extern FILE *yyin,*yyout;
    yyin=fopen("input4.txt","r");
    yyout=fopen("output4.txt","w");
    yylex();
    printf("Total identifiers: %d\n",count);
    return 0;
}
