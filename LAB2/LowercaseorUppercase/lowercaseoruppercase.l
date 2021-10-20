%{
    #include<stdio.h>
    //program to check  whether a string contains small alphabets, capital alphabets or both          
       

%}
%%
[a-z]+ {printf("%s:contains all lower case alphabets",yytext);}
[A-Z]+ {printf("%s:contains all uppercase alphabets",yytext);}
[a-zA-Z]+ {printf("%s: contains both lower and upper case alphabets",yytext);}
.* {printf("character other than alphabets");}

%%
int yywrap(void){
    return 0;
}
int main(){
    yylex();
    return 0;
}
 
