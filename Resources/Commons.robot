*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://buscacepinter.correios.com.br/app/endereco/index.php

*** Keywords ***
Nova sessao
    Open Browser                       ${url}         edge
Encerra sessao
    Capture Page Screenshot 
    Sleep                              3
    Close Browser
