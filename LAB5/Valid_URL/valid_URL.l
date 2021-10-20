%{
	//lex program for valid URL
%}

protocol "http"|"https"|"ftp"
Domain "com"|"in"|"io"|"co.in"|"edu"|"ac.in"
Domain_name [\/\.a-zA-Z0-9"-"]
URL {protocol}+"://www."+{Domain_name}*{Domain}*

%%
{URL} {printf("Valid URL");}
.* {printf("Invalid URL");}

%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}
