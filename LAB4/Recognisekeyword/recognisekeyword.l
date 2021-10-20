%{
    //lex program to detect the keywords 
%}
keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while

%%
keyword {printf("%s is keyword",yytext);}
.* {printf("\n%s not keyword",yytext);}

%%
int main(){
    printf("recognising keyword:");
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}
