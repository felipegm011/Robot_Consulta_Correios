*** Settings ***
Resource        ../Resources/Commons.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Test Cases ***
Consulta e validação de cep
    Go To                          ${url}
    Input Text                     id: endereco     58303360
    Sleep                          3
    Click Element                  id: btn_pesquisar
    Sleep                          3
    ${row_table}                   Get Text       id: resultado-DNEC
    #Log To Console                 ${row_table} 
    Should Contain                 ${row_table}      Rua Monsenhor S. Pires Ferreira 
    #Table Row Should Contain       id: resultado-DNEC       1       Rua Monsenhor S. Pires Ferreira
    