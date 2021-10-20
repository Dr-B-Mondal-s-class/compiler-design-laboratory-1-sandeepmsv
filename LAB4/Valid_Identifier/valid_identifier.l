%{
     //program to detect the identifiers    
%}
identifier [_a-zA-Z][a-zA-Z0-9_]*
%%
{identifier} {printf("%s is a valid identifier",yytext);}
.* {printf("not an identifier");}

%%
int main(){
   yylex();
}
int yywrap(void){
    return 0;
}
