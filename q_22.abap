" Questão 22: Gerar Sequência de Números Primos
" Crie um programa ABAP que solicite ao usuário um limite superior e gere uma sequência de números primos até esse limite.

REPORT gerar_sequencia_primos.

DATA: lv_limite TYPE i,
      lv_numero TYPE i VALUE 2,
      lv_eh_primo TYPE abap_bool,
      lv_divisor TYPE i.

WRITE 'Digite um limite superior:'.
READ lv_limite.

WRITE 'Números primos até', lv_limite, ':', /.

DO WHILE lv_numero <= lv_limite.
  lv_eh_primo = abap_true.
  lv_divisor = 2.

  DO WHILE lv_divisor <= lv_numero / 2 AND lv_eh_primo = abap_true.
    IF lv_numero MOD lv_divisor = 0.
      lv_eh_primo = abap_false.
    ENDIF.
    lv_divisor = lv_divisor + 1.
  ENDDO.

  IF lv_eh_primo = abap_true.
    WRITE lv_numero.
  ENDIF.

  lv_numero = lv_numero + 1.
ENDDO.
