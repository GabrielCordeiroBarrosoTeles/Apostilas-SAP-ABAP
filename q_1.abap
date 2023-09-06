"Questão 1: Calcular o Fatorial de um Número Crie um programa ABAP que solicite ao 
"usuário um número inteiro positivo e calcule o fatorial desse número. Em seguida, 
"exiba o resultado.

REPORT calcular_fatorial.

DATA: lv_numero TYPE i,            " Declaração da variável para armazenar o número
      lv_fatorial TYPE i VALUE 1,  " Inicialização do fatorial com 1
      lv_resultado TYPE i.         " Variável para armazenar o resultado

WRITE 'Digite um número inteiro positivo:'.
READ lv_numero.

IF lv_numero < 0.
  WRITE 'Por favor, insira um número inteiro positivo.'.
ELSE.
  DO lv_numero TIMES.               " Loop para calcular o fatorial
    lv_fatorial = lv_fatorial * lv_numero.
    lv_numero = lv_numero - 1.
  ENDDO.

  lv_resultado = lv_fatorial.
  WRITE 'O fatorial é:', lv_resultado.
ENDIF.
