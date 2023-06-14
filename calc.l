%{
  int opt = 0;
  int a, b;
  int digi(void);
%}
digit [0-9]+|([0-9]*)"."([0-9]+)
sum "+"
sub "-"
mul "*"
div "/"
%%
{digit} {digi();} 
{sum} {opt=1;}
{sub} {opt=2;}
{mul} {opt=3;}
{div} {opt=4;}
.|\n {printf("Result is: %d\n",a);}
%%
int digi()
{
 if(opt==0)
    a=atof(yytext); 
 else
 {
    b=atof(yytext);
	switch(opt)
	{
	   case 1:a=a+b;
		break;
	  
	   case 2:a=a-b;
	   break;
	   
	   case 3:a=a*b;
	   break;
	   
	   case 4:a=a/b;
	   break;
	}
	opt=0;
	}
}
int yywrap(){return (1);}
int main()
{
	printf("Enter the expression: \n");
	yylex();
	
	return 0;
}
