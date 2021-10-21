%{
    // Program to count total no of lexemes in the input file
    
    int total_count = 0;
%}

identifier [a-zA-Z_][a-zA-Z0-9_]*
keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while
operator [+-=!<>]|(<=)|(>=)|("==")|(&&)|("||")
float [0-9]*.[0-9]+
integer [0-9]+
seperators [(){}|, ;]


%%
{keyword} {total_count++;}
{identifier} {total_count++;}
{operator} {total_count++;}
{seperators} {total_count++;}
{integer} {total_count++;}
{float}  {total_count++;} 
\n  {return 0;}
. ;
%%

int main() {
    yyin = fopen("input.txt", "r");
    yylex();
     printf("Total no. of lexemes = %d\n", total_count); 
     fclose(yyin);
    
    return 0;
   
 
}
int yywrap(void)
{
    return 1;
}
