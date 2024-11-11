*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${URL}              https://www.pichau.com.br/
${TEXTODEBUSCA}     Monitores
${NOME}             Joãozinho
${SOBRENOME}        Silva
${CPF}              12345678910
${RG}               123456789
${EMAIL}            Email@text.com
${PASSWORD}         1234Teste

*** Keywords ***
Acessar site
  Open Browser   url=${URL}  browser=${BROWSER}
  Maximize Browser Window
  Wait Until Element Is Visible    id=rcc-confirm-button    10s
  Click Element                    id=rcc-confirm-button

Departamentos
  Wait Until Element Is Visible       xpath=//button[.//span[contains(text(), "Acesse todos os")]]
  
  Click Element                       xpath=//button[.//span[contains(text(), "Acesse todos os")]]  


Monitores
  Wait Until Page Contains Element    css:a.jss197[href="/monitores"] 
  Click Element                       css:a.jss197[href="/monitores"]


Monitor Casa e Escritório
  Click Element                       xpath=//span[text()='Monitor Casa e Escritório']

Busca
  Wait Until Element Is Visible    xpath=//input[@placeholder="Digite o que você procura..."]
  Input Text                       xpath=//input[@placeholder="Digite o que você procura..."]  ${TEXTODEBUSCA}
  Press Keys                       xpath=//input[@placeholder="Digite o que você procura..."]   RETURN

Cadastro
  Click Element    xpath=//a[@href="/account/register"]

Nome
  Input Text                       name=firstname    ${NOME}

Sobrenome
  Input Text                       name=lastname     ${SOBRENOME}

CPF
  Scroll Element Into View         name=taxvat
  Wait Until Element Is Visible    name=taxvat    10s
  Input Text                       name=taxvat  ${CPF}

RG
  Scroll Element Into View         name=rg
  Wait Until Element Is Visible    name=rg    10s
  Input Text                       name=rg  ${RG}

Email
  Scroll Element Into View         name=email
  Wait Until Element Is Visible    name=email    10s
  Input Text                       name=email  ${EMAIL}

Senha
  Scroll Element Into View         name=newPassword
  Wait Until Element Is Visible    name=newPassword    10s
  Input Text                       name=newPassword  ${PASSWORD}

Clicar No Botão Criar Conta
  Scroll Element Into View         xpath=//button[.//span[text()="Criar conta"]]  
  Wait Until Element Is Visible    xpath=//button[.//span[text()="Criar conta"]]    10s
  Click Element                    xpath=//button[.//span[text()="Criar conta"]]

Entrar no login
  Click Element    xpath=//a[@href="/account"]

Email login
  Input Text     id=username  ${NOME}

Senha login
  Input Password  id=password  ${PASSWORD}

Clicar login
  Click Element    css:[data-cy="login-submit"]