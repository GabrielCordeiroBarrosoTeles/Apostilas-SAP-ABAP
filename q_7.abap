"Questão 7: Verificar se um Número é Primo - Crie um programa ABAP que solicite 
"ao usuário um número inteiro positivo e verifique se esse número é primo ou não.

REPORT verificar_numero_primo.

DATA: lv_numero TYPE i,
      lv_eh_primo TYPE abap_bool VALUE abap_true,
      lv_divisor TYPE i VALUE 2.

WRITE 'Digite um número inteiro positivo:'.
READ lv_numero.

IF lv_numero <= 1.
  WRITE 'Por favor, insira um número inteiro positivo maior que 1.'.
ELSE.
  DO WHILE lv_divisor <= lv_numero / 2 AND lv_eh_primo = abap_true.
    IF lv_numero MOD lv_divisor = 0.
      lv_eh_primo = abap_false.
    ENDIF.
    lv_divisor = lv_divisor + 1.
  ENDDO.

  IF lv_eh_primo = abap_true.
    WRITE lv_numero, ' é um número primo.'.
  ELSE.
    WRITE lv_numero, ' não é um número primo.'.
  ENDIF.
ENDIF.
