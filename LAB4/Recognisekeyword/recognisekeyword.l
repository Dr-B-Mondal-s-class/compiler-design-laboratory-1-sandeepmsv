%{
    //lex program to detect the keywords
%}
keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while

%%
{keyword} {printf("%s is a  keyword",yytext);}
.* {printf("%s is not a keyword",yytext);}

%%
int main(){
    printf("recognising keyword:");
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}

