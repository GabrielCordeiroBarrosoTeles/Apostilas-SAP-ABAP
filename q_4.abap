"Questão 4: Validar um CPF Crie um programa ABAP que valide um número de CPF 
"(Cadastro de Pessoa Física) inserido pelo usuário. Verifique se o CPF possui 
"os dígitos verificadores corretos de acordo com a fórmula de validação.

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
