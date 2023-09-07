" Questão 21: Converter Horas em Minutos
" Crie um programa ABAP que solicite ao usuário um número de horas e o converta em minutos.

REPORT converter_horas_para_minutos.

DATA: lv_horas TYPE f,
      lv_minutos TYPE f.

WRITE 'Digite um número de horas:'.
READ lv_horas.

lv_minutos = lv_horas * 60.

WRITE 'O número de horas é igual a', lv_minutos, 'minutos.'