" Questão 13: Contar Números Pares e Ímpares
" Crie um programa ABAP que solicite ao usuário uma lista de números inteiros separados por vírgulas e conte quantos números são pares e quantos são ímpares.

REPORT contar_pares_impares.

DATA: lv_lista TYPE string,
      lt_numeros TYPE TABLE OF i,
      lv_numero TYPE i,
      lv_contador_pares TYPE i VALUE 0,
      lv_contador_impares TYPE i VALUE 0,
      lv_element TYPE string,
      lv_pos TYPE i,
      lv_char TYPE c LENGTH 1.

WRITE 'Digite uma lista de números inteiros separados por vírgulas:'.
READ lv_lista.

lv_lista = lv_lista && ','.

DO.
  lv_pos = sy-fdpos( lv_lista ).

  IF lv_pos > 0.
    lv_element = lv_lista+1( lv_pos-1 ).
    CLEAR lv_numero.

    TRANSLATE lv_element TO UPPER CASE.

    IF lv_element CP '0123456789'.
      lv_numero = lv_element.
      IF lv_numero MOD 2 = 0.
        lv_contador_pares = lv_contador_pares + 1.
      ELSE.
        lv_contador_impares = lv_contador_impares + 1.
      ENDIF.
    ENDIF.

    lv_lista = lv_lista+lv_pos+1.
  ELSE.
    EXIT.
  ENDIF.
ENDDO.

WRITE 'Quantidade de números pares:', lv_contador_pares.
WRITE 'Quantidade de números ímpares:', lv_contador_impares.