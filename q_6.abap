REPORT calcular_soma_digitos.

DATA: lv_numero TYPE i,
      lv_numero_original TYPE i,
      lv_soma_digitos TYPE i VALUE 0,
      lv_digito TYPE i.

WRITE 'Digite um número inteiro positivo:'.
READ lv_numero.

lv_numero_original = lv_numero.

IF lv_numero < 0.
  WRITE 'Por favor, insira um número inteiro positivo.'.
ELSE.
  DO WHILE lv_numero > 0.
    lv_digito = lv_numero MOD 10.
    lv_soma_digitos = lv_soma_digitos + lv_digito.
    lv_numero = lv_numero / 10.
  ENDDO.

  WRITE 'A soma dos dígitos de', lv_numero_original, 'é', lv_soma_digitos.
ENDIF.