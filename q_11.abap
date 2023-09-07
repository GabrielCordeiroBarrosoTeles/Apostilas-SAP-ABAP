" Questão 11: Verificar Palíndromo
" Crie um programa ABAP que solicite ao usuário uma palavra e verifique se ela é um palíndromo (ou seja, pode ser lida da mesma forma da esquerda para a direita e vice-versa).

REPORT verificar_palindromo.

DATA: lv_palavra TYPE string,
      lv_palindromo TYPE abap_bool VALUE abap_true,
      lv_inicio TYPE i VALUE 1,
      lv_fim TYPE i.

WRITE 'Digite uma palavra para verificar se é um palíndromo:'.
READ lv_palavra.

lv_fim = strlen( lv_palavra ).

DO WHILE lv_inicio < lv_fim AND lv_palindromo = abap_true.
  IF lv_palavra+lv_inicio(1) <> lv_palavra+lv_fim(1).
    lv_palindromo = abap_false.
  ENDIF.
  lv_inicio = lv_inicio + 1.
  lv_fim = lv_fim - 1.
ENDDO.

IF lv_palindromo = abap_true.
  WRITE 'A palavra é um palíndromo.'.
ELSE.
  WRITE 'A palavra não é um palíndromo.'.
ENDIF.