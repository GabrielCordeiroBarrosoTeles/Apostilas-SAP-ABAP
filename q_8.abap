REPORT gerar_sequencia_fibonacci.

DATA: lv_numero TYPE i,
      lv_anterior TYPE i VALUE 0,
      lv_atual TYPE i VALUE 1,
      lv_proximo TYPE i,
      lv_contador TYPE i VALUE 1.

WRITE 'Digite um número inteiro positivo para gerar a sequência Fibonacci:'.
READ lv_numero.

IF lv_numero < 1.
  WRITE 'Por favor, insira um número inteiro positivo maior ou igual a 1.'.
ELSE.
  WRITE 'Sequência Fibonacci até', lv_numero, ':', /,
        lv_anterior, /,
        lv_atual.

  DO WHILE lv_contador < lv_numero.
    lv_proximo = lv_anterior + lv_atual.
    WRITE lv_proximo.
    lv_anterior = lv_atual.
    lv_atual = lv_proximo.
    lv_contador = lv_contador + 1.
  ENDDO.
ENDIF.