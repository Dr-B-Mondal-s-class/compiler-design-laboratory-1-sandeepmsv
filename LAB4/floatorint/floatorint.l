%{
    //program to detect input string  is int or float     
%}

int [0-9]*
float {int}+"."{int}
%%
{int} {printf("%s int type",yytext);}
{float} {printf("%s float type",yytext);}
.+  {printf("%s not int and not float type",yytext)}
%%
int main(){

    yylex();
    return 0;

}
int yywrap(void){
    return 0;
}
