%{
     //lex program to identify a input string is a valid mobile number or not

%}

%%
"+91"[1-9][0-9]{9} {printf("valid mobile number\n");}
[1-9][0-9]{9} {printf("valid mobile number\n");}
.+ {printf("invalid mobile number\n");}

%%
int main(){
    printf("please enter your phone number for validation:");
    yylex();
    return 0;

}
int yywrap(void){
    return 0;
}
