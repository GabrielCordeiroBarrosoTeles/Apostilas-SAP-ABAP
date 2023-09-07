" Questão 20: Contagem de Caracteres
" Crie um programa ABAP que solicite ao usuário uma frase e conte quantos caracteres (incluindo espaços) ela possui.

REPORT contar_caracteres.

DATA: lv_frase TYPE string,
      lv_contagem TYPE i.

WRITE 'Digite uma frase:'.
READ lv_frase.

lv_contagem = strlen( lv_frase ).

WRITE 'A frase possui', lv_contagem, 'caracteres (incluindo espaços).'.