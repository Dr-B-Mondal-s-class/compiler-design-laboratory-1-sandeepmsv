%{
    //program to detect  whether a input string contains only alphabets or  not     
    
%}
%%
[a-zA-z]+ {printf(" %s : contains only alphabets",yytext);}
.* {printf("invalid input string");}

%%
int yywrap(void){
    return 0;
}
int main(){
    yylex();
    return 0;
}

