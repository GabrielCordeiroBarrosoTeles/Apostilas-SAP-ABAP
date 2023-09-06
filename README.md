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

**Questão 1: Calcular o Fatorial de um Número**
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
