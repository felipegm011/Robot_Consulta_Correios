*** Settings ***
Library     SeleniumLibrary
Library           RequestsLibrary
Library         Collections


*** Variables ***
${url}      https://buscacepinter.correios.com.br/app/endereco/index.php
#${BASE_URL}       https://viacep.com.br/ws/58303035/json/

*** Keywords ***
Nova sessao
    Log To Console    ...iniciando 
    #Open Browser                       ${url}         edge
Encerra sessao
    Capture Page Screenshot 
    Sleep                              3
    Close Browser
