%{
    #include<stdio.h>
    //
%}

%%
[ \t\n ]+ {fprintf(yyout,"");}		
. {fprintf(yyout,"%s",yytext);} // fprintf(FILE *fptr, const char *str, ...);	
%%


int yywrap(void)
{
return 1;
}

int main(void)
{
   yyin=fopen("input.txt","r");		
   yyout=fopen("output.txt","w");

   yylex();
   return 0;
}
