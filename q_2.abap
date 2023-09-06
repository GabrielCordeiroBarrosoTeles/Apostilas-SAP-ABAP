REPORT encontrar_maior_valor.

DATA: lt_numeros TYPE TABLE OF i,    " Declaração da tabela interna
      lv_maior_valor TYPE i,        " Variável para armazenar o maior valor
      lv_numero TYPE i.

APPEND 10 TO lt_numeros.             " Adição de valores à tabela interna
APPEND 25 TO lt_numeros.
APPEND 5 TO lt_numeros.
APPEND 40 TO lt_numeros.

LOOP AT lt_numeros INTO lv_numero.   " Loop para encontrar o maior valor
  IF lv_numero > lv_maior_valor.
    lv_maior_valor = lv_numero.
  ENDIF.
ENDLOOP.

WRITE 'O maior valor na tabela é:', lv_maior_valor.