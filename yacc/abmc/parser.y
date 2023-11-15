%{
#include <stdio.h>
int count_a = 0;
int count_b = 0;
int count_c = 0;
int count_m = 0;
%}

%token A B C

%%

start: expr { if (count_a == count_b + count_m && count_m > 0) printf("Valid\n"); else printf("Invalid\n"); }
      ;

expr: A expr B { count_a++; count_b++; }
    | C expr { count_c++; count_m++; }
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
