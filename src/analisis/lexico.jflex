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

%state CADENA

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
DECIMAL = [0-9]+("."[0-9]+)?

//Palabras reservadas
TK_PROGRAM = "program"
TK_END = "end"
TK_VAR = "var"
TK_DOUBLE = "double"
TK_SUM = "sum"
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
TK_TITULO = "titulo"
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
TK_GRAPHPIE = "graphpie"
TK_GRAPHLINE = "graphline"


%%
<YYINITIAL> {TK_PROGRAM}    {return new Symbol(sym.TK_PROGRAM, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_END}        {return new Symbol(sym.TK_END, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_VAR}        {return new Symbol(sym.TK_VAR, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_DOUBLE}     {return new Symbol(sym.TK_DOUBLE, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_SUM}        {return new Symbol(sym.TK_SUM, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_RES}        {return new Symbol(sym.TK_RES, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_MUL}        {return new Symbol(sym.TK_MUL, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_DIV}        {return new Symbol(sym.TK_DIV, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_MOD}        {return new Symbol(sym.TK_MOD, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_MEDIA}      {return new Symbol(sym.TK_MEDIA, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_MEDIANA}    {return new Symbol(sym.TK_MEDIANA, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_MODA}       {return new Symbol(sym.TK_MODA, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_VARIANZA}   {return new Symbol(sym.TK_VARIANZA, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_MAX}        {return new Symbol(sym.TK_MAX, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_MIN}        {return new Symbol(sym.TK_MIN, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_CONSOLE}    {return new Symbol(sym.TK_CONSOLE, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_PRINT}      {return new Symbol(sym.TK_PRINT, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_PIE}        {return new Symbol(sym.TK_PIE, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_TITULO}     {return new Symbol(sym.TTK_TITULO, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_LABEL}      {return new Symbol(sym.TK_LABEL, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_VALUE}      {return new Symbol(sym.TK_VALUE, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_CHAR}       {return new Symbol(sym.TK_CHAR, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_EXEC}       {return new Symbol(sym.TK_EXEC, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_EJEX}       {return new Symbol(sym.TK_EJEX, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_EJEY}       {return new Symbol(sym.TK_EJEY, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_TITULOX}    {return new Symbol(sym.TK_TITULOX, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_TIUTLOY}    {return new Symbol(sym.TK_TIUTLOY, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_GRAPHBAR}   {return new Symbol(sym.TK_GRAPHBAR, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_HISTOGRAM}  {return new Symbol(sym.TK_HISTOGRAM, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_GRAPHPIE}   {return new Symbol(sym.TK_GRAPHPIE, yyline, yycolumn, yytext());}
<YYINITIAL> {TK_GRAPHLINE}  {return new Symbol(sym.TK_GRAPHLINE, yyline, yycolumn, yytext());}

<YYINITIAL> {EXCLAMACION}   {return new Symbol(sym.EXCLAMACION,yyline,yycolumn,yytext());}
<YYINITIAL> {DOSPUNTOS}     {return new Symbol(sym.DOSPUNTOS,yyline,yycolumn,yytext());}
<YYINITIAL> {FLECHAI}       {return new Symbol(sym.FLECHAI,yyline,yycolumn,yytext());}
<YYINITIAL> {PTYCOMA}       {return new Symbol(sym.PTYCOMA,yyline,yycolumn,yytext());}
<YYINITIAL> {COMA}          {return new Symbol(sym.COMA,yyline,yycolumn,yytext());}
<YYINITIAL> {IGUAL}         {return new Symbol(sym.IGUAL,yyline,yycolumn,yytext());}
<YYINITIAL> {MENORQ}        {return new Symbol(sym.MENORQ,yyline,yycolumn,yytext());}
<YYINITIAL> {MAYORQ}        {return new Symbol(sym.MAYORQ,yyline,yycolumn,yytext());}
<YYINITIAL> {CORCHETE1}     {return new Symbol(sym.CORCHETE1,yyline,yycolumn,yytext());}
<YYINITIAL> {CORCHETE2}     {return new Symbol(sym.CORCHETE2,yyline,yycolumn,yytext());}
<YYINITIAL> {DECIMAL}       {return new Symbol(sym.DECIMAL,yyline,yycolumn,yytext());}

<YYINITIAL> {BLANCOS}    {}

<YYINITIAL> [\"]            {yybegin(CADENA);cadena="";}

<CADENA>                    {
    [\"]    {String tmp=cadena; cadena=""; yybegin(YYINITIAL); return new Symbol(sym.CADENA, yycolumn,yyline,tmp);}
    [^\"]   {cadena+=yytext();}
}