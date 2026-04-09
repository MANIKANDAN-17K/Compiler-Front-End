%{
#include<stdio.h>
%}

%%

"int"|"float"|"char"|"if"|"else"|"while" {printf("KEYWORD : %s \n",yytext); }

[0-9]+ {printf("NUMBER  : %s \n",yytext);}

[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier %s \n",yytext);}

[+\-*/%=<>] {printf("operator : %s \n",yytext);}

[(){};,] {printf("symbol : %s\n",yytext);}

[\t\n]+ ;

. {printf("unknown : %s\n",yytext);}

%%

int main(){
	printf("enter the code : \n");
	yylex();
	return 0;
}

int yywrap(){
	return 1;
}
