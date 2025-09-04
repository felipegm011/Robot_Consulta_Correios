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
    ${options}=    Evaluate    __import__('selenium.webdriver.chrome.options', fromlist=['Options']).Options()
    # remove a interface grafica do navegador
    #Call Method     ${options}    add_argument    --headless
    #Call Method     ${options}    add_argument    --disable-gpu
    Create WebDriver    Chrome    options=${options}
    Go To    ${url}
Encerra sessao
    Capture Page Screenshot 
    Sleep                              3
    Close Browser
