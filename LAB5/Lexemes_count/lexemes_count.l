%{
    #include<stdio.h>
    //lex program to count total number of lexemes
    int count=0;

%}
identifier [a-zA-Z_][a-zA-Z0-9_]*
keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while
operator [+-=!<>]|(<=)|(>=)|("==")|(&&)|("||")
float [0-9]*.[0-9]+
integer [0-9]+
seperator [(){}|, ;]
%%
{keyword} {count++;}
{identifier} {count++;}
{operator}  {count++;}
{integer}  {count++;}
{float} {count++;}
{seperator} {count++;}
\n {printf("total number of lexemes are:%d",count);   }


%%
int main(){
    yylex();
    
    return 0;

}
int yywrap(void){
    return 0;
}
