" Questão 25: Gerar Sequência Fibonacci
" Crie um programa ABAP que solicite ao usuário um número N e gere os N primeiros números da sequência de Fibonacci.

REPORT gerar_sequencia_fibonacci.

DATA: lv_limite TYPE i,
      lv_fibonacci1 TYPE i VALUE 0,
      lv_fibonacci2 TYPE i VALUE 1,
      lv_contador TYPE i VALUE 2,
      lv_proximo_fibonacci TYPE i.

WRITE 'Digite um número N para gerar os N primeiros números da sequência de Fibonacci:'.
READ lv_limite.

IF lv_limite >= 1.
  WRITE 'Sequência de Fibonacci:', /, lv_fibonacci1, /, lv_fibonacci2.

  DO WHILE lv_contador < lv_limite.
    lv_proximo_fibonacci = lv_fibonacci1 + lv_fibonacci2.
    WRITE lv_proximo_fibonacci.
    
    lv_fibonacci1 = lv_fibonacci2.
    lv_fibonacci2 = lv_proximo_fibonacci.
    
    lv_contador = lv_contador + 1.
  ENDDO.
ELSE.
  WRITE 'Por favor, insira um número maior ou igual a 1 para gerar a sequência de Fibonacci.'.
ENDIF.