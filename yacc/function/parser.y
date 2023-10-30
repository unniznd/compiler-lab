%{
#include<stdio.h>
#include "y.tab.h"
%}

%token COMMA ID BUILTIN SC NL RP LP FUNCT INT FLOAT CHAR

%%

program: var SC NL { printf("Valid declaration\n"); }
       | varlist SC NL { printf("Valid declaration\n"); }
       | FUNCT LP paramlist RP SC NL { printf("Function declaration\n"); }
       ;

var: datatype ID { printf("Variable declaration\n"); }
   ;

datatype: BUILTIN { $$ = BUILTIN; }
        | INT { $$ = INT; }
        | FLOAT { $$ = FLOAT; }
        | CHAR { $$ = CHAR; }
        ;

varlist: varlist COMMA ID { printf("Variable declaration\n"); }
       | ID { printf("Variable declaration\n"); }
       ;

paramlist: paramlist COMMA param { printf("Parameter declaration\n"); }
         | param { printf("Parameter declaration\n"); }
         | /* empty */ { printf("No parameters\n"); }
         ;

param: datatype ID { printf("Parameter declaration\n"); }
     ;

%%
void yyerror(const char *str) { printf("error: %s\n", str); }

int main() { yyparse(); return 0; }