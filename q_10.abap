REPORT ordenar_tabela_interna.

DATA: lt_numeros TYPE TABLE OF i,
      lv_numero TYPE i.

APPEND 10 TO lt_numeros.
APPEND 5 TO lt_numeros.
APPEND 25 TO lt_numeros.
APPEND 2 TO lt_numeros.

SORT lt_numeros ASCENDING.

LOOP AT lt_numeros INTO lv_numero.
  WRITE lv_numero.
ENDLOOP.