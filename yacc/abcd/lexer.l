%{
#include "parser.tab.h"
%}

%%

a       { return A; }
b       { return B; }
c       { return C; }
d       { return D; }
\n      { return 0; }
.       { return yytext[0]; }

%%

int yywrap() {
    return 1;
}
