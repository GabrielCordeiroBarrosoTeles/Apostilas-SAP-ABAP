"Questão 3: Conversão de Unidades de Temperatura Crie um programa ABAP que permita ao usuário 
"converter temperaturas de graus Celsius para Fahrenheit e vice-versa. Solicite ao usuário que 
"escolha a conversão desejada e forneça as fórmulas de conversão adequadas.

REPORT converter_temperatura.

DATA: lv_opcao TYPE c LENGTH 1,       " Variável para a escolha da conversão
      lv_temperatura TYPE f,          " Variável para a temperatura a ser convertida
      lv_resultado TYPE f.            " Variável para armazenar o resultado

WRITE 'Escolha a conversão desejada:', /,
      '1 - Celsius para Fahrenheit', /,
      '2 - Fahrenheit para Celsius'.

READ lv_opcao.

WRITE 'Digite a temperatura:'.
READ lv_temperatura.

CASE lv_opcao.                        " Estrutura de controle CASE para a escolha da conversão
  WHEN '1'.
    lv_resultado = (lv_temperatura * 9 / 5) + 32.  " Fórmula de conversão Celsius para Fahrenheit
    WRITE 'A temperatura em Fahrenheit é:', lv_resultado.
  WHEN '2'.
    lv_resultado = (lv_temperatura - 32) * 5 / 9.  " Fórmula de conversão Fahrenheit para Celsius
    WRITE 'A temperatura em Celsius é:', lv_resultado.
  WHEN OTHERS.
    WRITE 'Opção inválida.'.
ENDCASE.
