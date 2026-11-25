
/* === PLIK KONFIGURACYJNY SETUP === */
%let path = /workspaces/volume;
libname proj "&path";

%let seed = 20261125;

data proj.dane;
  set proj.a5;                         
  R_Y = missing(Y_NEWDEPOSIT);       
run;

/* Wydruk wyników (wymóg c) */
ods pdf file="&path/wydruk_wynikow.pdf";
