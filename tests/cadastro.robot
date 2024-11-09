*** Settings ***
Documentation  Cadastro de usuario com credenciais válidas
Resource  ../resources/resource.robot

*** Test Cases ***
Cadastro de usuário
  Acessar site
  Cadastro
  Nome
  Sobrenome
  CPF
  RG
  Email
  Senha
  Clicar No Botão Criar Conta
  Close Browser