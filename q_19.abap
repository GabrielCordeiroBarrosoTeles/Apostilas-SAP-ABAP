" Questão 19: Jogo de Adivinhação
" Crie um programa ABAP que gera um número aleatório entre 1 e 100 e permite ao usuário adivinhar o número.
" O programa deve informar se o número adivinhado é maior ou menor do que o número gerado.

REPORT jogo_adivinhacao.

DATA: lv_numero_aleatorio TYPE i,
      lv_tentativa TYPE i,
      lv_palpite TYPE i.

" Gera um número aleatório entre 1 e 100
lv_numero_aleatorio = cl_abap_random=>random_int( 1 100 ).

WRITE 'Tente adivinhar o número entre 1 e 100.'.

DO.
  WRITE 'Digite seu palpite:'.
  READ lv_palpite.

  lv_tentativa = lv_tentativa + 1.

  IF lv_palpite = lv_numero_aleatorio.
    WRITE 'Parabéns! Você acertou o número em', lv_tentativa, 'tentativas.'.
    EXIT.
  ELSEIF lv_palpite < lv_numero_aleatorio.
    WRITE 'Tente novamente. O número é maior.'.
  ELSE.
    WRITE 'Tente novamente. O número é menor.'.
  ENDIF.
ENDDO.