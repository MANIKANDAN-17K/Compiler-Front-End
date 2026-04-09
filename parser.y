%{
#include<stdio.h>
#include<stdlib.h>

int yylex();
void yyerror(const char *s);

%}

%token NUMBER IDENTIFIER KEYWORD
%left '+' '-'
%left '*' '/'
%%
program:
	program statement
	|
	;
statement:
	expr ';' {printf("valid expression\n");}
	;
expr:
        expr '+' expr
        | expr '-' expr
	| expr '*' expr
	| expr '/' expr
        | NUMBER
        | IDENTIFIER
        ;
%%

int main(){ 
	printf("Enter code : \n");
	yyparse();
	return 0;
}
void yyerror(const char *s){
	printf("syntax Error\n");
}
