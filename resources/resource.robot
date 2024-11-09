*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${URL}              https://www.pichau.com.br/
${TEXTODEBUSCA}     Monitores

*** Keywords ***
Acessar site
  Open Browser   url=${URL}  browser=${BROWSER}
  Maximize Browser Window

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