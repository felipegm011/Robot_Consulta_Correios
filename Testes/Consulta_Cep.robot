*** Settings ***
Resource        ../Resources/Commons.robot
Resource        ../Resources/data.py
Library           DateTime
##################################################
#author Felipe Gomes
#Dara 23/05/2022
#Versão 1.0
##################################################

*** Keywords ***
Consulta e validação de cep
    # recebendo parametro da keywork
    [Arguments]                    ${cep} 
    ${date} =                      Get Current Date
    Go To                          ${url}
    Input Text                     id: endereco     ${cep}
    Sleep                          3
    Click Element                  id: btn_pesquisar
    Sleep                          3
    ${row_table}                   Get Text       id: resultado-DNEC
    #Log To Console                 ${row_table} 
    Should Contain                 ${row_table}      Rua Monsenhor S. Pires Ferreira 
    #Table Row Should Contain       id: resultado-DNEC       1       Rua Monsenhor S. Pires Ferreira 
