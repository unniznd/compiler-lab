%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
"void"|"int"|"float"|"char" { return BUILTIN; }
"," { return COMMA; }
";" { return SC; }
"\n" { return NL; }
"(" { return LP; }
")" { return RP; }
[a-zA-Z][a-zA-Z0-9]* { return ID; }
[ \t] { /* Ignore whitespace and tabs */ }
. { /* Handle unexpected characters or syntax errors */ }

%%

int yywrap() { return 1; }