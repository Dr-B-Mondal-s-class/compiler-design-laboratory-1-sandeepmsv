%{
    #include<stdio.h>
    //lex program to print the total characters,whitesapces,tabs and lines in the given input file
    int ch_count,spaces_count,tabs_count,lines_count=0;
    
%}
%%
\n {lines_count++;}
([ ]) {spaces_count++;}
\t {tabs_count++;}
. {ch_count++;}

%%
int main(int argc,char*argv[]){
    
    yyin=fopen("input.txt","r");
    yylex();
    fclose(yyin);
    printf("number of characters:%d\n",ch_count);
    printf("number of spaces:%d\n",spaces_count);
    printf("number of lines:%d\n",lines_count);
    printf("number of tabs:%d\n ",tabs_count);
    return 0;
}
int yywrap(void){
    return 1;
}
