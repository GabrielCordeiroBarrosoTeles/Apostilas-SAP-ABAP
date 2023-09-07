# Apostilas SAP e ABAP

## ABAP:
A introdução básica à linguagem de programação ABAP (Advanced Business Application Programming). O ABAP é a linguagem de programação usada principalmente no ambiente SAP (Sistemas, Aplicativos e Produtos em Processamento de Dados) para desenvolver aplicativos personalizados e realizar personalizações no sistema SAP. Aqui estão alguns conceitos fundamentais:

1. **Estrutura de um Programa ABAP:**
   
   Um programa ABAP é composto por várias seções, incluindo a seção de declaração, a seção de processamento e a seção de saída. A seção de declaração é onde você declara variáveis, tabelas internas e outras estruturas de dados. A seção de processamento é onde você escreve a lógica do programa e a seção de saída é usada para exibir resultados.

2. **Variáveis e Tipos de Dados:**

   No ABAP, você pode declarar variáveis usando a palavra-chave `DATA`. Existem diversos tipos de dados, incluindo tipos simples (como INTEGER, STRING, etc.) e tipos complexos (como estruturas e tabelas). Por exemplo:

   ```abap
   DATA lv_integer TYPE i.
   DATA lv_string TYPE string.
   ```

3. **Estruturas de Controle:**

   O ABAP suporta estruturas de controle comuns, como `IF`, `ELSE`, `ENDIF`, `DO`, `WHILE`, `CASE`, entre outros. Você pode usá-los para controlar o fluxo do seu programa.

4. **Laços de Repetição:**

   Você pode usar loops `DO`, `WHILE`, `FOR`, etc., para executar repetidamente um bloco de código com base em uma condição ou um número de iterações.

5. **Tabelas Internas:**

   As tabelas internas são estruturas de dados semelhantes a arrays ou listas em outras linguagens. Você pode usá-las para armazenar e manipular conjuntos de dados. Aqui está um exemplo:

   ```abap
   DATA lt_employee TYPE TABLE OF string.
   APPEND 'John' TO lt_employee.
   APPEND 'Alice' TO lt_employee.
   ```

6. **Funções e Métodos:**

   No ABAP, você pode criar funções e métodos para encapsular a lógica do programa e reutilizá-la em vários lugares.

7. **Classes e Objetos:**

   O ABAP também suporta programação orientada a objetos (POO), com a criação de classes e objetos. Isso permite a criação de código mais modular e flexível.

8. **Manipulação de Dados do SAP:**

   O ABAP pode ser usado para interagir com os dados no sistema SAP, como ler, atualizar ou criar registros em tabelas do SAP.

9. **Depuração e Teste:**

   O SAP oferece ferramentas de depuração para ajudar a identificar e corrigir problemas em seus programas ABAP.

10. **Transações:**

    Os programas ABAP são geralmente executados em transações SAP. Você pode criar suas próprias transações para executar seus programas.

Lembrando que a programação ABAP é extensa e envolve muitos conceitos específicos do SAP. Para aprender mais, é aconselhável seguir tutoriais e cursos específicos de ABAP, além de explorar a documentação oficial do SAP e praticar com exemplos de código.

## Só alguns exemplos:

1. **Declaração de Variáveis e Saída de Dados:**

```abap
DATA lv_name TYPE string.           " Declaração de uma variável de texto
lv_name = 'João'.                  " Atribuição de um valor à variável
WRITE 'Olá, ' && lv_name.          " Exibe uma mensagem na tela
```

2. **Estrutura de Controle IF:**

```abap
DATA lv_age TYPE i VALUE 25.       " Declaração de uma variável inteira com valor inicial
IF lv_age >= 18.                    " Verifica se a idade é maior ou igual a 18
  WRITE 'Você é maior de idade.'.  " Exibe uma mensagem se a condição for verdadeira
ELSE.
  WRITE 'Você é menor de idade.'.  " Exibe uma mensagem se a condição for falsa
ENDIF.
```

3. **Loop DO:**

```abap
DATA lv_counter TYPE i VALUE 1.     " Declaração de uma variável de contagem
DO 5 TIMES.                         " Loop que executa cinco vezes
  WRITE: 'Iteração', lv_counter.    " Exibe uma mensagem com o valor da contagem
  lv_counter = lv_counter + 1.     " Atualiza a variável de contagem
ENDDO.
```

4. **Tabela Interna e Loop FOR:**

```abap
DATA lt_names TYPE TABLE OF string. " Declaração de uma tabela interna de textos
APPEND 'João' TO lt_names.          " Adiciona um valor à tabela interna
APPEND 'Maria' TO lt_names.         " Adiciona outro valor à tabela interna

LOOP AT lt_names INTO lv_name.      " Loop que itera sobre os elementos da tabela interna
  WRITE: 'Nome:', lv_name.          " Exibe os valores da tabela interna
ENDLOOP.
```
O ABAP é uma linguagem poderosa usada principalmente no contexto do SAP, e esses são apenas alguns dos conceitos básicos para começar. À medida que você se aprofundar, encontrará muitos recursos avançados para explorar.

## Exercícios

**[Questão 1:](https://github.com/GabrielCordeiroBarrosoTeles/Apostilas-SAP-ABAP/blob/main/q_1.abap) Calcular o Fatorial de um Número**
Crie um programa ABAP que solicite ao usuário um número inteiro positivo e calcule o fatorial desse número. Em seguida, exiba o resultado.

```abap
REPORT calcular_fatorial.

DATA: lv_numero TYPE i,            " Declaração da variável para armazenar o número
      lv_fatorial TYPE i VALUE 1,  " Inicialização do fatorial com 1
      lv_resultado TYPE i.         " Variável para armazenar o resultado

WRITE 'Digite um número inteiro positivo:'.
READ lv_numero.

IF lv_numero < 0.
  WRITE 'Por favor, insira um número inteiro positivo.'.
ELSE.
  DO lv_numero TIMES.               " Loop para calcular o fatorial
    lv_fatorial = lv_fatorial * lv_numero.
    lv_numero = lv_numero - 1.
  ENDDO.

  lv_resultado = lv_fatorial.
  WRITE 'O fatorial é:', lv_resultado.
ENDIF.
```

**Questão 2: Encontrar o Maior Valor em uma Tabela Interna**
Crie um programa ABAP que declare uma tabela interna com números inteiros e encontre o maior valor dentro dela. Exiba o valor máximo encontrado.

```abap
REPORT encontrar_maior_valor.

DATA: lt_numeros TYPE TABLE OF i,    " Declaração da tabela interna
      lv_maior_valor TYPE i,        " Variável para armazenar o maior valor
      lv_numero TYPE i.

APPEND 10 TO lt_numeros.             " Adição de valores à tabela interna
APPEND 25 TO lt_numeros.
APPEND 5 TO lt_numeros.
APPEND 40 TO lt_numeros.

LOOP AT lt_numeros INTO lv_numero.   " Loop para encontrar o maior valor
  IF lv_numero > lv_maior_valor.
    lv_maior_valor = lv_numero.
  ENDIF.
ENDLOOP.

WRITE 'O maior valor na tabela é:', lv_maior_valor.
```

**Questão 3: Conversão de Unidades de Temperatura**
Crie um programa ABAP que permita ao usuário converter temperaturas de graus Celsius para Fahrenheit e vice-versa. Solicite ao usuário que escolha a conversão desejada e forneça as fórmulas de conversão adequadas.

```abap
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
```

**Questão 4: Validar um CPF**
Crie um programa ABAP que valide um número de CPF (Cadastro de Pessoa Física) inserido pelo usuário. Verifique se o CPF possui os dígitos verificadores corretos de acordo com a fórmula de validação.

```abap
REPORT validar_cpf.

DATA: lv_cpf TYPE string,                " Variável para armazenar o CPF inserido
      lv_cpf_numeros TYPE string,       " Variável para armazenar apenas os números do CPF
      lv_digito1 TYPE i,                " Variáveis para armazenar os dígitos verificadores
      lv_digito2 TYPE i,
      lv_soma1 TYPE i,                 " Variáveis para calcular a soma de dígitos ponderados
      lv_soma2 TYPE i.

WRITE 'Digite um número de CPF (apenas números):'.
READ lv_cpf.

IF strlen( lv_cpf ) <> 11 OR lv_cpf CP '0123456789' <> ''.
  WRITE 'CPF inválido.'.
ELSE.
  lv_cpf_numeros = lv_cpf+1(9).         " Extrai os nove primeiros dígitos do CPF

  lv_soma1 = 0.
  lv_soma2 = 0.

  DO 9 TIMES.                         " Loop para calcular as somas
    lv_soma1 = lv_soma1 + ( val( lv_cpf_numeros+sy-index(1) ) * (10 - sy-index) ).
    lv_soma2 = lv_soma2 + ( val( lv_cpf_numeros+sy-index(1) ) * (11 - sy-index) ).
  ENDDO.

  lv_digito1 = 11 - ( lv_soma1 % 11 ).    " Cálculo do primeiro dígito verificador
  lv_digito2 = 11 - ( lv_soma2 % 11 ).    " Cálculo do segundo dígito verificador

  IF lv_digito1 = val( lv_cpf+10(1) ) AND lv_digito2 = val( lv_cpf+11(1) ).
    WRITE 'CPF válido.'.
  ELSE.
    WRITE 'CPF inválido.'.
  ENDIF.
ENDIF.
```
**Questão 5: Calcular a Média de Notas**

Suponha que você tem um conjunto de notas de alunos e deseja calcular a média dessas notas.

```abap
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

```

Neste exemplo, primeiro criamos uma tabela interna (`lt_notas`) para armazenar as notas dos alunos. Em seguida, adicionamos algumas notas à tabela interna. O loop calcula a soma das notas e, finalmente, a média é calculada e exibida na tela.

Lembre-se de que, em um ambiente SAP real, você interagiria com um banco de dados ou uma fonte de dados para obter as notas dos alunos em vez de adicioná-las manualmente como fizemos neste exemplo simples.

Espero que esses comentários tornem as resoluções mais compreensíveis. Eles explicam o propósito de cada variável e a lógica por trás de cada etapa do programa.

### Questão 6: Calcular a Soma dos Dígitos de um Número

Crie um programa ABAP que solicite ao usuário um número inteiro positivo e calcule a soma dos dígitos desse número.

```abap
REPORT calcular_soma_digitos.

DATA: lv_numero TYPE i,
      lv_numero_original TYPE i,
      lv_soma_digitos TYPE i VALUE 0,
      lv_digito TYPE i.

WRITE 'Digite um número inteiro positivo:'.
READ lv_numero.

lv_numero_original = lv_numero.

IF lv_numero < 0.
  WRITE 'Por favor, insira um número inteiro positivo.'.
ELSE.
  DO WHILE lv_numero > 0.
    lv_digito = lv_numero MOD 10.
    lv_soma_digitos = lv_soma_digitos + lv_digito.
    lv_numero = lv_numero / 10.
  ENDDO.

  WRITE 'A soma dos dígitos de', lv_numero_original, 'é', lv_soma_digitos.
ENDIF.
```

### Questão 7: Verificar se um Número é Primo

Crie um programa ABAP que solicite ao usuário um número inteiro positivo e verifique se esse número é primo ou não.

```abap
REPORT verificar_numero_primo.

DATA: lv_numero TYPE i,
      lv_eh_primo TYPE abap_bool VALUE abap_true,
      lv_divisor TYPE i VALUE 2.

WRITE 'Digite um número inteiro positivo:'.
READ lv_numero.

IF lv_numero <= 1.
  WRITE 'Por favor, insira um número inteiro positivo maior que 1.'.
ELSE.
  DO WHILE lv_divisor <= lv_numero / 2 AND lv_eh_primo = abap_true.
    IF lv_numero MOD lv_divisor = 0.
      lv_eh_primo = abap_false.
    ENDIF.
    lv_divisor = lv_divisor + 1.
  ENDDO.

  IF lv_eh_primo = abap_true.
    WRITE lv_numero, ' é um número primo.'.
  ELSE.
    WRITE lv_numero, ' não é um número primo.'.
  ENDIF.
ENDIF.
```

### Questão 8: Gerar uma Sequência Fibonacci

Crie um programa ABAP que solicite ao usuário um número inteiro positivo e gere a sequência Fibonacci até o número desejado.

```abap
REPORT gerar_sequencia_fibonacci.

DATA: lv_numero TYPE i,
      lv_anterior TYPE i VALUE 0,
      lv_atual TYPE i VALUE 1,
      lv_proximo TYPE i,
      lv_contador TYPE i VALUE 1.

WRITE 'Digite um número inteiro positivo para gerar a sequência Fibonacci:'.
READ lv_numero.

IF lv_numero < 1.
  WRITE 'Por favor, insira um número inteiro positivo maior ou igual a 1.'.
ELSE.
  WRITE 'Sequência Fibonacci até', lv_numero, ':', /,
        lv_anterior, /,
        lv_atual.

  DO WHILE lv_contador < lv_numero.
    lv_proximo = lv_anterior + lv_atual.
    WRITE lv_proximo.
    lv_anterior = lv_atual.
    lv_atual = lv_proximo.
    lv_contador = lv_contador + 1.
  ENDDO.
ENDIF.
```

### Questão 9: Calcular o Quadrado e a Raiz Quadrada de um Número

Crie um programa ABAP que solicite ao usuário um número e calcule o quadrado e a raiz quadrada desse número.

```abap
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
```

### Questão 10: Ordenar uma Tabela Interna

Crie um programa ABAP que declare uma tabela interna com números inteiros e ordene-a em ordem crescente.

```abap
REPORT ordenar_tabela_interna.

DATA: lt_numeros TYPE TABLE OF i,
      lv_numero TYPE i.

APPEND 10 TO lt_numeros.
APPEND 5 TO lt_numeros.
APPEND 25 TO lt_numeros.
APPEND 2 TO lt_numeros.

SORT lt_numeros ASCENDING.

LOOP AT lt_numeros INTO lv_numero.
  WRITE lv_numero.
ENDLOOP.
```
Com certeza! Aqui estão mais 10 questões com comentários no código e um comentário no topo de cada código descrevendo o enunciado da questão:

### Questão 11: Verificar Palíndromo

```abap
" Questão 11: Verificar Palíndromo
" Crie um programa ABAP que solicite ao usuário uma palavra e verifique se ela é um palíndromo (ou seja, pode ser lida da mesma forma da esquerda para a direita e vice-versa).

REPORT verificar_palindromo.

DATA: lv_palavra TYPE string,
      lv_palindromo TYPE abap_bool VALUE abap_true,
      lv_inicio TYPE i VALUE 1,
      lv_fim TYPE i.

WRITE 'Digite uma palavra para verificar se é um palíndromo:'.
READ lv_palavra.

lv_fim = strlen( lv_palavra ).

DO WHILE lv_inicio < lv_fim AND lv_palindromo = abap_true.
  IF lv_palavra+lv_inicio(1) <> lv_palavra+lv_fim(1).
    lv_palindromo = abap_false.
  ENDIF.
  lv_inicio = lv_inicio + 1.
  lv_fim = lv_fim - 1.
ENDDO.

IF lv_palindromo = abap_true.
  WRITE 'A palavra é um palíndromo.'.
ELSE.
  WRITE 'A palavra não é um palíndromo.'.
ENDIF.
```

### Questão 12: Calcular Média Ponderada

```abap
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
```

### Questão 13: Contar Números Pares e Ímpares

```abap
" Questão 13: Contar Números Pares e Ímpares
" Crie um programa ABAP que solicite ao usuário uma lista de números inteiros separados por vírgulas e conte quantos números são pares e quantos são ímpares.

REPORT contar_pares_impares.

DATA: lv_lista TYPE string,
      lt_numeros TYPE TABLE OF i,
      lv_numero TYPE i,
      lv_contador_pares TYPE i VALUE 0,
      lv_contador_impares TYPE i VALUE 0,
      lv_element TYPE string,
      lv_pos TYPE i,
      lv_char TYPE c LENGTH 1.

WRITE 'Digite uma lista de números inteiros separados por vírgulas:'.
READ lv_lista.

lv_lista = lv_lista && ','.

DO.
  lv_pos = sy-fdpos( lv_lista ).

  IF lv_pos > 0.
    lv_element = lv_lista+1( lv_pos-1 ).
    CLEAR lv_numero.

    TRANSLATE lv_element TO UPPER CASE.

    IF lv_element CP '0123456789'.
      lv_numero = lv_element.
      IF lv_numero MOD 2 = 0.
        lv_contador_pares = lv_contador_pares + 1.
      ELSE.
        lv_contador_impares = lv_contador_impares + 1.
      ENDIF.
    ENDIF.

    lv_lista = lv_lista+lv_pos+1.
  ELSE.
    EXIT.
  ENDIF.
ENDDO.

WRITE 'Quantidade de números pares:', lv_contador_pares.
WRITE 'Quantidade de números ímpares:', lv_contador_impares.
```

### Questão 14: Converter Decimal para Binário

```abap
" Questão 14: Converter Decimal para Binário
" Crie um programa ABAP que solicite ao usuário um número decimal e o converta para sua representação em binário.

REPORT converter_decimal_para_binario.

DATA: lv_decimal TYPE i,
      lv_binario TYPE string VALUE '',
      lv_resto TYPE i.

WRITE 'Digite um número decimal:'.
READ lv_decimal.

DO WHILE lv_decimal > 0.
  lv_resto = lv_decimal MOD 2.
  lv_binario = lv_resto && lv_binario.
  lv_decimal = lv_decimal DIV 2.
ENDDO.

WRITE 'O número em binário é:', lv_binario.
```

### Questão 15: Verificar Ano Bissexto

```abap
" Questão 15: Verificar Ano Bissexto
" Crie um programa ABAP que solicite ao usuário um ano e verifique se ele é bissexto ou não.

REPORT verificar_ano_bissexto.

DATA: lv_ano TYPE i,
      lv_eh_bissexto TYPE abap_bool VALUE abap_false.

WRITE 'Digite um ano para verificar se é bissexto:'.
READ lv_ano.

IF lv_ano MOD 4 = 0 AND (lv_ano MOD 100 <> 0 OR lv_ano MOD 400 = 0).
  lv_eh_bissexto = abap_true.
ENDIF.

IF lv_eh_bissexto = abap_true.
  WRITE lv_ano, ' é um ano bissexto.'.
ELSE.
  WRITE lv_ano, ' não é um ano bissexto.'.
ENDIF.
```

### Questão 16: Calcular Média de Idades

```abap
" Questão 16: Calcular Média de Idades
" Crie um programa ABAP que solicite ao usuário as idades de várias pessoas e calcule a média das idades.

REPORT calcular_media_idades.

DATA: lt_idades TYPE TABLE OF i,
      lv_idade TYPE i,
      lv_soma_idades TYPE i VALUE 0,
      lv_media_idades TYPE f.

WRITE 'Digite as idades das pessoas (digite 0 para encerrar):'.

DO.
  READ lv_idade.

  IF lv_idade = 0.
    EXIT.
  ENDIF.

  IF lv_idade >= 0. " Verifica se a idade é um valor válido
    APPEND lv_idade TO lt_idades.
    lv_soma_idades

 = lv_soma_idades + lv_idade.
  ENDIF.
ENDDO.

IF lines( lt_idades ) > 0.
  lv_media_idades = lv_soma_idades / lines( lt_idades ).
  WRITE 'A média das idades é:', lv_media_idades.
ELSE.
  WRITE 'Nenhuma idade válida foi inserida.'.
ENDIF.
```

### Questão 17: Encontrar Múltiplos

```abap
" Questão 17: Encontrar Múltiplos
" Crie um programa ABAP que solicite ao usuário um número e encontre os múltiplos desse número até um limite especificado.

REPORT encontrar_multiplos.

DATA: lv_numero TYPE i,
      lv_limite TYPE i,
      lv_multiplo TYPE i VALUE 0.

WRITE 'Digite um número:'.
READ lv_numero.

WRITE 'Digite um limite:'.
READ lv_limite.

WRITE 'Múltiplos de', lv_numero, 'até', lv_limite, ':', /.

DO WHILE lv_multiplo + lv_numero <= lv_limite.
  lv_multiplo = lv_multiplo + lv_numero.
  WRITE lv_multiplo.
ENDDO.
```

### Questão 18: Calcular Desconto de Salário

```abap
" Questão 18: Calcular Desconto de Salário
" Crie um programa ABAP que solicite ao usuário o salário de um funcionário e calcule o desconto de 10% sobre o salário.

REPORT calcular_desconto_salario.

DATA: lv_salario TYPE f,
      lv_desconto TYPE f.

WRITE 'Digite o salário do funcionário:'.
READ lv_salario.

lv_desconto = lv_salario * 0.1. " Calcula o desconto de 10%

WRITE 'O desconto de 10% sobre o salário é:', lv_desconto.
```

### Questão 19: Jogo de Adivinhação

```abap
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
```

### Questão 20: Contagem de Caracteres

```abap
" Questão 20: Contagem de Caracteres
" Crie um programa ABAP que solicite ao usuário uma frase e conte quantos caracteres (incluindo espaços) ela possui.

REPORT contar_caracteres.

DATA: lv_frase TYPE string,
      lv_contagem TYPE i.

WRITE 'Digite uma frase:'.
READ lv_frase.

lv_contagem = strlen( lv_frase ).

WRITE 'A frase possui', lv_contagem, 'caracteres (incluindo espaços).'.
```

### Questão 20: Cálculo de Juros Compostos

```abap
" Questão 20: Cálculo de Juros Compostos
" Crie um programa ABAP que solicite ao usuário o capital, a taxa de juros anual e o período (em anos) e calcule o montante final usando juros compostos.

REPORT calcular_juros_compostos.

DATA: lv_capital TYPE f,
      lv_taxa_juros TYPE f,
      lv_periodo TYPE i,
      lv_montante_final TYPE f.

WRITE 'Digite o capital inicial:'.
READ lv_capital.

WRITE 'Digite a taxa de juros anual (em decimal):'.
READ lv_taxa_juros.

WRITE 'Digite o período (em anos):'.
READ lv_periodo.

lv_montante_final = lv_capital * (1 + lv_taxa_juros) ** lv_periodo.

WRITE 'O montante final é:', lv_montante_final.
```
### Questão 21: Converter Horas em Minutos

```abap
" Questão 21: Converter Horas em Minutos
" Crie um programa ABAP que solicite ao usuário um número de horas e o converta em minutos.

REPORT converter_horas_para_minutos.

DATA: lv_horas TYPE f,
      lv_minutos TYPE f.

WRITE 'Digite um número de horas:'.
READ lv_horas.

lv_minutos = lv_horas * 60.

WRITE 'O número de horas é igual a', lv_minutos, 'minutos.'
```

### Questão 22: Gerar Sequência de Números Primos

```abap
" Questão 22: Gerar Sequência de Números Primos
" Crie um programa ABAP que solicite ao usuário um limite superior e gere uma sequência de números primos até esse limite.

REPORT gerar_sequencia_primos.

DATA: lv_limite TYPE i,
      lv_numero TYPE i VALUE 2,
      lv_eh_primo TYPE abap_bool,
      lv_divisor TYPE i.

WRITE 'Digite um limite superior:'.
READ lv_limite.

WRITE 'Números primos até', lv_limite, ':', /.

DO WHILE lv_numero <= lv_limite.
  lv_eh_primo = abap_true.
  lv_divisor = 2.

  DO WHILE lv_divisor <= lv_numero / 2 AND lv_eh_primo = abap_true.
    IF lv_numero MOD lv_divisor = 0.
      lv_eh_primo = abap_false.
    ENDIF.
    lv_divisor = lv_divisor + 1.
  ENDDO.

  IF lv_eh_primo = abap_true.
    WRITE lv_numero.
  ENDIF.

  lv_numero = lv_numero + 1.
ENDDO.
```

### Questão 23: Contagem de Vogais e Consoantes

```abap
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
```

### Questão 24: Converter Decimal para Hexadecimal

```abap
" Questão 24: Converter Decimal para Hexadecimal
" Crie um programa ABAP que solicite ao usuário um número decimal e o converta para sua representação em hexadecimal.

REPORT converter_decimal_para_hexadecimal.

DATA: lv_decimal TYPE i,
      lv_hexadecimal TYPE string VALUE '',
      lv_resto TYPE i.

WRITE 'Digite um número decimal:'.
READ lv_decimal.

DO WHILE lv_decimal > 0.
  lv_resto = lv_decimal MOD 16.
  CASE lv_resto.
    WHEN 0 TO 9.
      lv_hexadecimal = lv_resto && lv_hexadecimal.
    WHEN 10.
      lv_hexadecimal = 'A' && lv_hexadecimal.
    WHEN 11.
      lv_hexadecimal = 'B' && lv_hexadecimal.
    WHEN 12.
      lv_hexadecimal = 'C' && lv_hexadecimal.
    WHEN 13.
      lv_hexadecimal = 'D' && lv_hexadecimal.
    WHEN 14.
      lv_hexadecimal = 'E' && lv_hexadecimal.
    WHEN OTHERS.
      lv_hexadecimal = 'F' && lv_hexadecimal.
  ENDCASE.
  lv_decimal = lv_decimal DIV 16.
ENDDO.

WRITE 'O número em hexadecimal é:', lv_hexadecimal.
```

### Questão 25: Gerar Sequência Fibonacci

```abap
" Questão 25: Gerar Sequência Fibonacci
" Crie um programa ABAP que solicite ao usuário um número N e gere os N primeiros números da sequência de Fibonacci.

REPORT gerar_sequencia_fibonacci.

DATA: lv_limite TYPE i,
      lv_fibonacci1 TYPE i VALUE 0,
      lv_fibonacci2 TYPE i VALUE 1,
      lv_contador TYPE i VALUE 2,
      lv_proximo_fibonacci TYPE i.

WRITE 'Digite um número N para gerar os N primeiros números da sequência de Fibonacci:'.
READ lv_limite.

IF lv_limite >= 1.
  WRITE 'Sequência de Fibonacci:', /, lv_fibonacci1, /, lv_fibonacci2.

  DO WHILE lv_contador < lv_limite.
    lv_proximo_fibonacci = lv_fibonacci1 + lv_fibonacci2.
    WRITE lv_proximo_fibonacci.
    
    lv_fibonacci1 = lv_fibonacci2.
    lv_fibonacci2 = lv_proximo_fibonacci.
    
    lv_contador = lv_contador + 1.
  ENDDO.
ELSE.
  WRITE 'Por favor, insira um número maior ou igual a 1 para gerar a sequência de Fibonacci.'.
ENDIF.
```

Agora, com esta nova questão, deve haver uma variedade completa de questões sem repetições. Se você tiver mais perguntas ou precisar de mais assistência, fique à vontade para perguntar.
