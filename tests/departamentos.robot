*** Settings ***
Documentation   Clicar em departamentos
Resource   ../resources/resource.robot

*** Test Cases ***
Verificar departamentos
   Acessar site
   Click departamentos
   Click monitores
   Click Monitor Casa e Escritório
   Close Browser