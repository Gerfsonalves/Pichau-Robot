*** Settings ***
Documentation   Clicar em departamentos
Resource   ../resources/resource.robot

*** Test Cases ***
Verificar departamentos
   Acessar site
   Departamentos
   Monitores
   Monitor Casa e Escritório