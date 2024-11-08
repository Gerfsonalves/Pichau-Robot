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
  Wait Until Element Is Visible       xpath://strong[contains(text(), "Departamentos")]    timeout= 10 seconds
  Page Should Contain Element         xpath://strong[@class="jss221" and contains(text(), "Departamentos")]
  Click Element                       css=.jss220

Click monitores
  Wait Until Page Contains Element    css:a.jss197[href="/monitores"]    timeout=10
  Click Element                       css:a.jss197[href="/monitores"]


Click Monitor Casa e Escritório
  Click Element                       xpath=//span[text()='Monitor Casa e Escritório']