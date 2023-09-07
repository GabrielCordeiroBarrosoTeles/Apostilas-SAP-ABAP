" Questão 14: Converter Decimal para Binário
" Crie um programa ABAP que solicite ao usuário um número decimal e o converta para sua representação em binário.

REPORT converter_decimal_para_binario.

DATA: lv_decimal TYPE i,
      lv_binario TYPE string VALUE '',
      lv_resto TYPE i.

WRITE 'Digite um número decimal:'.
READ lv_decimal.

DO WHILE lv_decimal > 0.
  lv_resto = lv_decimal MOD 2.
  lv_binario = lv_resto && lv_binario.
  lv_decimal = lv_decimal DIV 2.
ENDDO.

WRITE 'O número em binário é:', lv_binario.