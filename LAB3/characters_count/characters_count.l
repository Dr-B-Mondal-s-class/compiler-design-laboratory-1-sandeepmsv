%{
    //program to count the number of characters in input string
    #include<stdio.h>
    int ch_count=0;
%}
%%
[\(\)\[\]] {}
\t {}
. {ch_count++;}
\n {printf("%s-character count:%d\n",yytext,ch_count);ch_count=0;}


%%
int yywrap(void){
    return 0;

}
int main(){
    yylex();
    return 0;
}
