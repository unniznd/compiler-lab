# Compiler Design Lab Programs
Created by [Aanand S](https://github.com/unniznd)

## Usage Instructions

Each Lex program in this repository comes with its own set of instructions on how to run it. Generally, the process involves using Lex (or Flex) to generate a lexer, compiling it with a C/C++ compiler, and then executing the resulting executable. Below are the steps you can follow for running any Lex program:

Lex Progams are

```
calculator
count_word_sentence
html
postfix
real_numer
remove_comment
token_c
```

1. **Generate Lexer**:
   Use Lex to generate a C source file from the Lex program. If you're using Flex, replace `lex` with `flex`.

   ```bash
   lex program_name.l
2. **Compile Lexer**:
    Compile the generated C source file with a C/C++ compiler. If you're using Flex, replace `lex.yy.c` with `lex.yy.cc`.
    
    ```bash
    gcc lex.yy.c -o program_name -ll
    ```
3. **Execute Lexer**:
    Execute the resulting executable.
    
    ```bash
    ./program_name
    ```