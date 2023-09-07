" Questão 16: Calcular Média de Idades
" Crie um programa ABAP que solicite ao usuário as idades de várias pessoas e calcule a média das idades.

REPORT calcular_media_idades.

DATA: lt_idades TYPE TABLE OF i,
      lv_idade TYPE i,
      lv_soma_idades TYPE i VALUE 0,
      lv_media_idades TYPE f.

WRITE 'Digite as idades das pessoas (digite 0 para encerrar):'.

DO.
  READ lv_idade.

  IF lv_idade = 0.
    EXIT.
  ENDIF.

  IF lv_idade >= 0. " Verifica se a idade é um valor válido
    APPEND lv_idade TO lt_idades.
    lv_soma_idades

 = lv_soma_idades + lv_idade.
  ENDIF.
ENDDO.

IF lines( lt_idades ) > 0.
  lv_media_idades = lv_soma_idades / lines( lt_idades ).
  WRITE 'A média das idades é:', lv_media_idades.
ELSE.
  WRITE 'Nenhuma idade válida foi inserida.'.
ENDIF.