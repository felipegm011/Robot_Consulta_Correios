*** Settings ***
Resource        ./Testes/Consulta_Cep.robot
Resource        ../Resources/Commons.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

***Test Cases***
RF001 - Consulta CEP
    Consulta e validação de cep         58303360