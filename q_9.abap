"Questão 9: Calcular o Quadrado e a Raiz Quadrada de um Número - Crie um
"programa ABAP que solicite ao usuário um número e calcule o quadrado e 
"a raiz quadrada desse número.

REPORT calcular_quadrado_raiz.

DATA: lv_numero TYPE f,
      lv_quadrado TYPE f,
      lv_raiz_quadrada TYPE f.

WRITE 'Digite um número:'.
READ lv_numero.

lv_quadrado = lv_numero * lv_numero.
lv_raiz_quadrada = sqrt( lv_numero ).

WRITE 'O quadrado de', lv_numero, 'é', lv_quadrado.
WRITE 'A raiz quadrada de', lv_numero, 'é', lv_raiz_quadrada.
