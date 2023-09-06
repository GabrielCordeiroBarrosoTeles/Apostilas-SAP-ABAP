"Questão 5: Calcular a Média de Notas - Suponha que você tem um conjunto 
"de notas de alunos e deseja calcular a média dessas notas.

REPORT calcular_media.

DATA: lt_notas TYPE TABLE OF i,
      lv_nota TYPE i,
      lv_soma TYPE i,
      lv_media TYPE f.

" Adicione algumas notas à tabela interna (pode ser feito interagindo com uma base de dados real)
APPEND 90 TO lt_notas.
APPEND 85 TO lt_notas.
APPEND 78 TO lt_notas.
APPEND 92 TO lt_notas.
APPEND 88 TO lt_notas.

" Calcule a soma das notas
LOOP AT lt_notas INTO lv_nota.
  lv_soma = lv_soma + lv_nota.
ENDLOOP.

" Calcule a média
lv_media = lv_soma / lines( lt_notas ).

WRITE: 'Notas dos alunos:', /, /.

" Exiba as notas e a média
LOOP AT lt_notas INTO lv_nota.
  WRITE: lv_nota, /.
ENDLOOP.

WRITE: /, 'Média das notas:', lv_media.
