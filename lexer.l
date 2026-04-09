%{
#include "y.tab.h"
#include <stdio.h>
%}

%% 
"int"|"float"|"char"|"if"|"else"|"while" { return KEYWORD; }

[0-9]+ { yylval = atoi(yytext); return NUMBER; }

[a-zA-Z_][a-zA-Z0-9_]* {return IDENTIFIER;}

"+" {return '+';}
[(){};,] {return yytext[0];}

. {printf("unknown");}

%%
int yywrap(){return 1;}
