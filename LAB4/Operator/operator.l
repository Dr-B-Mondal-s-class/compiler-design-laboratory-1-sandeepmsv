%{
    //program to recognise the type of operator

%}
arthemetic_operator "+"|"-"|"/"|"%"|"*"|"++"|"--"
logical_operator   "=="|"!="|"&&"|"!"|"||"

%%

{arthemetic_operator}  {printf("%s is arthemetic operator",yytext);}
{logical_operator}     {printf("%s is a logical operator",yytext);}
.* {printf("%s is not logical and arthmetic operator",yytext);}

%%
int main(){
    yylex();
    return 0;
}
int yywrap(void){
    return 0;
}

