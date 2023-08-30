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