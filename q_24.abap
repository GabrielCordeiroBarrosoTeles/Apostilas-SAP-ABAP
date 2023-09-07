" Questão 24: Converter Decimal para Hexadecimal
" Crie um programa ABAP que solicite ao usuário um número decimal e o converta para sua representação em hexadecimal.

REPORT converter_decimal_para_hexadecimal.

DATA: lv_decimal TYPE i,
      lv_hexadecimal TYPE string VALUE '',
      lv_resto TYPE i.

WRITE 'Digite um número decimal:'.
READ lv_decimal.

DO WHILE lv_decimal > 0.
  lv_resto = lv_decimal MOD 16.
  CASE lv_resto.
    WHEN 0 TO 9.
      lv_hexadecimal = lv_resto && lv_hexadecimal.
    WHEN 10.
      lv_hexadecimal = 'A' && lv_hexadecimal.
    WHEN 11.
      lv_hexadecimal = 'B' && lv_hexadecimal.
    WHEN 12.
      lv_hexadecimal = 'C' && lv_hexadecimal.
    WHEN 13.
      lv_hexadecimal = 'D' && lv_hexadecimal.
    WHEN 14.
      lv_hexadecimal = 'E' && lv_hexadecimal.
    WHEN OTHERS.
      lv_hexadecimal = 'F' && lv_hexadecimal.
  ENDCASE.
  lv_decimal = lv_decimal DIV 16.
ENDDO.

WRITE 'O número em hexadecimal é:', lv_hexadecimal.