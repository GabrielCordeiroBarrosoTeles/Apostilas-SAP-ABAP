" Questão 18: Calcular Desconto de Salário
" Crie um programa ABAP que solicite ao usuário o salário de um funcionário e calcule o desconto de 10% sobre o salário.

REPORT calcular_desconto_salario.

DATA: lv_salario TYPE f,
      lv_desconto TYPE f.

WRITE 'Digite o salário do funcionário:'.
READ lv_salario.

lv_desconto = lv_salario * 0.1. " Calcula o desconto de 10%

WRITE 'O desconto de 10% sobre o salário é:', lv_desconto.