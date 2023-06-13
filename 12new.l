/* 13)Design a DFA that accepts string that starts with 'ab' and ends with 'ba' over the input a,b.*/
%{
#include<stdio.h>
%}
%s A B C D DEAD
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN DEAD;
<INITIAL>[^ab\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Invalid\n");}

<A>a BEGIN DEAD;
<A>b BEGIN B;
<A>[^ab\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Invalid\n");}

<B>a BEGIN C;
<B>b BEGIN B;
<B>[^ab\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Invalid\n");}

<C>a BEGIN D;
<C>b BEGIN B;
<C>[^ab\n] BEGIN DEAD;
<C>\n BEGIN INITIAL; {printf("Valid\n");}

<D>a BEGIN D;
<D>b BEGIN B;
<D>[^ab\n] BEGIN DEAD;
<D>\n BEGIN INITIAL; {printf("Invalid\n");}

<DEAD>[ab] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}

%%
int yywrap() {return (1);}
int main()
{
printf("Enter the string: \n");
yylex();
return 0;
}
