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