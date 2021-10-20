%{
 //program to count whitespaces,tabes,characters in input string
 #include <stdio.h>
 int c_ch=0,c_tabs=0,c_spaces=0;

%}
%%
[ ] {c_spaces++;}
\t {c_tabs++;}
. {c_ch++;}
\n {printf("characters count:%d",c_ch);
    printf("tabs count:%d",c_tabs);
    printf("spaces count:%d\n",c_spaces);
    c_spaces=0;c_tabs=0;c_ch=0;}
%%
int yywrap(void){
    return 0;
    
}
int main(){
    yylex();
    return 0;
}
