*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}   https://www.pichau.com.br/

*** Keywords ***
Acessar site
  Open Browser   url=${URL}  browser=${BROWSER}
  Maximize Browser Window

Click departamentos
  Element Should Be Visible       xpath=//button[.//span[contains(text(), "Acesse todos os")]]
  
  Click Element                       xpath=//button[.//span[contains(text(), "Acesse todos os")]]  


Click monitores
  Wait Until Page Contains Element    css:a.jss197[href="/monitores"] 
  Click Element                       css:a.jss197[href="/monitores"]


Click Monitor Casa e Escritório
  Click Element                       xpath=//span[text()='Monitor Casa e Escritório']