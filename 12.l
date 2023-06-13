/*DFA in lex which accepts input starting with 011 and ending with 110 over the input set 0,1*/

%{
#include<stdio.h>
%}
%s A B C D E G DEAD

%%
<INITIAL>0 		BEGIN A;
<INITIAL>1 		BEGIN DEAD;
<INITIAL>\n 		BEGIN INITIAL; {printf("Invalid String.\n\n");}
<INITIAL>[^01\n] 	BEGIN DEAD;

<A>1 			BEGIN B;
<A>0 			BEGIN DEAD;
<A>\n 			BEGIN INITIAL; {printf("Invalid String.\n\n");}
<A>[^01\n] 		BEGIN DEAD;

<B>1 			BEGIN C;
<B>0 			BEGIN DEAD;
<B>\n 			BEGIN INITIAL; {printf("Invalid String.\n\n");}
<B>[^01\n] 		BEGIN DEAD;

<C>0 			BEGIN G;
<C>1 			BEGIN C;
<C>\n 			BEGIN INITIAL; {printf("Invalid String.\n\n");}
<C>[^01\n] 		BEGIN DEAD;

<G>0 			BEGIN E;
<G>1 			BEGIN D;
<G>\n 			BEGIN INITIAL; {printf("Valid String.\n\n");}
<G>[^01\n] 		BEGIN DEAD;

<D>0 			BEGIN E;
<D>1 			BEGIN C;
<D>\n 			BEGIN INITIAL; {printf("Invalid String.\n\n");}
<D>[^01\n] 		BEGIN DEAD;

<E>1 			BEGIN D;
<E>0 			BEGIN E;
<E>\n 			BEGIN INITIAL; {printf("Invalid String.\n\n");}
<E>[^01\n] 		BEGIN DEAD;

<DEAD>[01] 		BEGIN DEAD;
<DEAD>\n 		BEGIN INITIAL; {printf("Invalid String.\n\n");}
%%

int yywrap() 		{return (1);}
int main()
{
printf("Enter string:\n");
yylex();
return 0;
}

