%{
    //program to detect whether the input string contains alphabets or digits
%}


%%
[0-9]+ {printf("digit.");}
[a-zA-z]+ {printf("alphabet.");}
.* {printf("neither alphabet nor digit.");}
%%
int main(){
    yylex();
    return 0; 
}
int yywrap(void){
    return 0;
}


