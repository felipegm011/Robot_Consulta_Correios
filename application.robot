*** Settings ***
#Resource        ./Testes/Consulta_Cep.robot
Resource        ./Testes/viacep.robot
Resource        ./Resources/Commons.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

***Test Cases***
#RF001 - Consulta CEP
#    Consulta e validação de cep         58303360

RF002 - Consulta viacep
    Example of a GET Request    58303035