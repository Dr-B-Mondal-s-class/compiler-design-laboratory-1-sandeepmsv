%{
     #include<stdio.h>
     //lex program to count the number of character from  input file
     int ch_count=0;
%}
%%
. {ch_count++;}
%%
int yywrap(void){
    return 1;

}
int main(){
    yyin=fopen("input.txt","r");
    yylex();
    fclose(yyin);
    printf("no of characters:%d\n\n",ch_count);
    return 0;
}
