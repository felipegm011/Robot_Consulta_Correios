*** Settings ***
Resource        ../Resources/Commons.robot
Library           DateTime
##################################################
#author Felipe Gomes
#Dara 02/01/2024
#Versão 1.0
##################################################

*** Variables ***
${BASE_URL}       https://viacep.com.br/ws/

*** Keywords ***
Example of a GET Request
    [Arguments]                   ${cep}
    Create Session                viacep    ${BASE_URL}
    ${response}=                  GET Request        viacep    ${cep}/json/
    ${json_data}=                 Call Method  ${response}  json
    log To Console                Status code: ${response.status_code}
    Log To Console                Retorno JSON:
    Log To Console                ${response.text}
    Should Contain                ${response.text}    Rua Joana de Barros Moreira Machado
    #Log To Console               List of Values: ${json_data}
    #Should Be Equal As Numbers   ${response.status_code}    200
