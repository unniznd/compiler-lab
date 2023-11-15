%{
#include <stdio.h>
int count_a = 0;
int count_b = 0;
int count_c = 0;
int count_d = 0;
%}

%token A B C D

%%

start: expr { if (count_a == count_b && count_c == count_d) printf("Valid\n"); else printf("Invalid\n"); }
      ;

expr: A expr B C expr D { count_a++; count_b++; count_c++; count_d++; }
    | /* empty */ { printf("Invalid\n"); }
    ;

%%

int main() {
    yyparse();
    return 0;
}

int yywrap() {
    return 1;
}
