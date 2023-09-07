" Questão 17: Encontrar Múltiplos
" Crie um programa ABAP que solicite ao usuário um número e encontre os múltiplos desse número até um limite especificado.

REPORT encontrar_multiplos.

DATA: lv_numero TYPE i,
      lv_limite TYPE i,
      lv_multiplo TYPE i VALUE 0.

WRITE 'Digite um número:'.
READ lv_numero.

WRITE 'Digite um limite:'.
READ lv_limite.

WRITE 'Múltiplos de', lv_numero, 'até', lv_limite, ':', /.

DO WHILE lv_multiplo + lv_numero <= lv_limite.
  lv_multiplo = lv_multiplo + lv_numero.
  WRITE lv_multiplo.
ENDDO.