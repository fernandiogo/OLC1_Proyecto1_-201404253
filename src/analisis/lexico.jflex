package analisis;

import java_cup.runtime.Symbol;

%%
scanner es= new scanner(texto);
s.cadena;

%{
    String cadena = "";
%}

%init{
    yyline = 1;
    yycolumn = 1;
%init}

%cup
%class scanner
%public
%line
%char
%column
%full
%ignorecase

%state cadena

//simbolos
EXCLAMACION = "!"
DOSPUNTOS = ":"
FLECHAI = "<-"
PTYCOMA = ";"
COMA = ","
BLANCOS=[\ \r\t\f\n]+
ENTEROS = [0-9]+

//Palabras reservadas
TK_PROGRAM = "program"
TK_END = "end"
TK_ENDPROGRAM = "end program"


%%
<YYINITIAL> {TK_PROGRAM}    {return new Symbol(sys.TK_PROGRAM, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_ENDPROGRAM} {return new Symbol(sys.TK_ENDPROGRAM, yyline, yycolumn, yytext());}
