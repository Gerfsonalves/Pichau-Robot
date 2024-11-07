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
  Wait Until Page Contains    Acesse todos os Departamentos    timeout=10s
  Click Element    css=.jss220
