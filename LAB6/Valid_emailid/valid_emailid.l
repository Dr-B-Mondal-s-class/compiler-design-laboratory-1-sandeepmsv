%{
    // lex program to identify a string is valid email or not
%}

em_name [a-zA-Z0-9][a-zA-Z0-9\-\.\_\+]*
domain "com"|"net"|"org"
email {em_name}@{em_name}\.{domain}
%%

{email} {printf("valid email id\n");}
.* {printf("invalid email id");}
%%
int main(){
    printf("enter your email address:");
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}
