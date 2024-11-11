*** Settings ***
Documentation   Cadastro com dados válidos
Resource  ../resources/resource.robot

*** Test Cases ***
Login de usuario válido
  Acessar site
  Entrar no login
  Email login
  Senha login
  Clicar login