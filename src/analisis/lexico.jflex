package analisis;

import java_cup.runtime.Symbol;

%%
//scanner es= new scanner(texto);
//s.cadena;

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
IGUAL = "="
MENORQ = "<"
MAYORQ = ">"
CORCHETE1 = "["
CORCHETE2 = "]"
BLANCOS =[\ \r\t\f\n]+
DOUBLE = [0-9]+.[0-9]+

//Palabras reservadas
TK_PROGRAM = "program"
TK_END = "end"
TK_ENDPROGRAM = "end program"
TK_VAR = "var"
TK_SUM = "sum2
TK_RES = "res"
TK_MUL = "mul"
TK_DIV = "div"
TK_MOD = "mod"
TK_MEDIA = "media"
TK_MEDIANA = "mediana"
TK_MODA = "moda"
TK_VARIANZA = "varianza"
TK_MAX = "max"
TK_MIN = "min"
TK_CONSOLE = "console"
TK_PRINT = "print"
TK_PIE = "graphpie"
Tk_TITULO = "titulo"
TK_LABEL = "label"
TK_VALUE = "values"
TK_CHAR = "char"
TK_EXEC = "exec"
TK_EJEX = "ejex"
TK_EJEY = "ejey"
TK_TITULOX = "titulox"
TK_TIUTLOY = "tituloy"
TK_GRAPHBAR = "graphbar"
TK_HISTOGRAM = "histogram"





%%
<YYINITIAL> {TK_PROGRAM}    {return new Symbol(sys.TK_PROGRAM, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_ENDPROGRAM} {return new Symbol(sys.TK_ENDPROGRAM, yyline, yycolumn, yytext());}
