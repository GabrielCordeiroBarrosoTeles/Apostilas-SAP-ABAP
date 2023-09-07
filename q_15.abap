" Questão 15: Verificar Ano Bissexto
" Crie um programa ABAP que solicite ao usuário um ano e verifique se ele é bissexto ou não.

REPORT verificar_ano_bissexto.

DATA: lv_ano TYPE i,
      lv_eh_bissexto TYPE abap_bool VALUE abap_false.

WRITE 'Digite um ano para verificar se é bissexto:'.
READ lv_ano.

IF lv_ano MOD 4 = 0 AND (lv_ano MOD 100 <> 0 OR lv_ano MOD 400 = 0).
  lv_eh_bissexto = abap_true.
ENDIF.

IF lv_eh_bissexto = abap_true.
  WRITE lv_ano, ' é um ano bissexto.'.
ELSE.
  WRITE lv_ano, ' não é um ano bissexto.'.
ENDIF.