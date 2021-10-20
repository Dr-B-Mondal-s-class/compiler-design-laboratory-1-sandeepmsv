%{
    //program to count number of vowels and consonants in the given input string  
    #include<stdio.h>
    int v_count=0; //for vowels count
    int c_count=0; //for consonant count 
%}
%%
[aeiouAEIOU] {v_count++;}
[a-zA-Z] {c_count++;}
\n {printf("vowels count = %d",v_count);printf(",consonants count = %d\n",c_count);v_count=0;c_count=0;}
%%
int yywrap(void){
    return 1;
}
int main(){
    yylex();
    return 0;
}
