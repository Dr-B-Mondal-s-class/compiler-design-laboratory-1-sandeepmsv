%{
    #include<stdio.h>
    // program to check whether input string contains consonants or vowels
    
%}

%%
[aeiouAEIOU]+ {printf("contains vowels");}
[bcdfghj-np-tv-zBCDFGHJ-NP-TV-Z]+ {printf("contains consonants");}
[a-zA-Z]+ {printf("contains both consonants and vowels");}
.* {printf("invalid");}
%%
int yywrap(void){
    return 0;
}
int main(){
    yylex();
    return 0;
}

