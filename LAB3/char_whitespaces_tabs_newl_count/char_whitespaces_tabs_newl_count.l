%{
 //program to count whitespaces,tabes,characters in input string
 #include <stdio.h>
 int c_ch=0,c_tabs=0,c_spaces=0;

%}
%%
[ ] {c_spaces++;}
\t {c_tabs++;}
. {c_ch++;}
\n {printf("\ncharacters count:%d",c_ch);
    printf("\ntabs count:%d",c_tabs);
    printf("\nspaces count:%d\n",c_spaces);
    c_spaces=0;c_tabs=0;c_ch=0;}
%%
int yywrap(void){
    return 0;
    
}
int main(){
    yylex();
    return 0;
}
