%{
   //program to check whether input string digit or not
%}
%%
[0-9]{1} {printf("%s  is a  digit",yytext);}
.* {printf(yytext);printf("\tnot a digit");}
%%
int yywrap(void){
    return 0;
}
int main(){
    yylex();
    return 0;
}
