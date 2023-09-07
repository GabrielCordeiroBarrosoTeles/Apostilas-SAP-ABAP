" Questão 12: Calcular Média Ponderada
" Crie um programa ABAP que solicite ao usuário as notas e os pesos de três avaliações e calcule a média ponderada.

REPORT calcular_media_ponderada.

DATA: lv_nota1 TYPE f,
      lv_peso1 TYPE f,
      lv_nota2 TYPE f,
      lv_peso2 TYPE f,
      lv_nota3 TYPE f,
      lv_peso3 TYPE f,
      lv_media_ponderada TYPE f.

WRITE 'Digite a nota da primeira avaliação:'.
READ lv_nota1.
WRITE 'Digite o peso da primeira avaliação:'.
READ lv_peso1.

WRITE 'Digite a nota da segunda avaliação:'.
READ lv_nota2.
WRITE 'Digite o peso da segunda avaliação:'.
READ lv_peso2.

WRITE 'Digite a nota da terceira avaliação:'.
READ lv_nota3.
WRITE 'Digite o peso da terceira avaliação:'.
READ lv_peso3.

lv_media_ponderada = (lv_nota1 * lv_peso1 + lv_nota2 * lv_peso2 + lv_nota3 * lv_peso3) / (lv_peso1 + lv_peso2 + lv_peso3).

WRITE 'A média ponderada é:', lv_media_ponderada.