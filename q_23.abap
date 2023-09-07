" Questão 23: Contagem de Vogais e Consoantes
" Crie um programa ABAP que solicite ao usuário uma frase e conte quantas vogais e consoantes ela possui.

REPORT contar_vogais_consoantes.

DATA: lv_frase TYPE string,
      lv_vogais TYPE i VALUE 0,
      lv_consoantes TYPE i VALUE 0,
      lv_char TYPE c LENGTH 1.

WRITE 'Digite uma frase:'.
READ lv_frase.

DO lv_char = lv_frase+1(1) WHILE lv_char NE space.
  TRANSLATE lv_char TO UPPER CASE.
  CASE lv_char.
    WHEN 'A' OR 'E' OR 'I' OR 'O' OR 'U'.
      lv_vogais = lv_vogais + 1.
    WHEN 'B' TO 'Z'.
      lv_consoantes = lv_consoantes + 1.
  ENDCASE.
ENDDO.

WRITE 'A frase possui', lv_vogais, 'vogais e', lv_consoantes, 'consoantes.'.