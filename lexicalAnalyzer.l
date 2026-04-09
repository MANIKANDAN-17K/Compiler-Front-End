%{
#include<stdio.h>
%}

%%

<<<<<<< HEAD
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier %s \n",yytext);}

=======
>>>>>>> 0329f372e913a73b235ef05fc3ae2b6ef65fab94
"int"|"float"|"char"|"if"|"else"|"while" {printf("KEYWORD : %s \n",yytext); }

[0-9]+ {printf("NUMBER  : %s \n",yytext);}

<<<<<<< HEAD
=======
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier %s \n",yytext);}
>>>>>>> 0329f372e913a73b235ef05fc3ae2b6ef65fab94

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
