/* Lex (Flex) specification along with a C code snippet.*/
/* Lex is a lexical analyzer generator that is often used to tokenize input for further processing in programs. */
/* This code appears to be an attempt to create a simple program that counts lines, words, and characters in a text file */



%{
#include<stdio.h>
int line=0,word=0,ch=0;
%}
%%
[a-z|A-Z|0-9] {ch++;}
" " {word++}
"\n" {line++;word++;}
. {}
%%
int main(int argc, char* argv[])
{
yyin=fopen("input.txt", "r");
yylex();
printf("Line: %d\n", line);
printf("Word: %d", word);
printf("Character: %d\n", ch);
}
