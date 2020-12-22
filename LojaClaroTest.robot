*** Settings ***
Resource         Resource.robot
Test Setup       Acessar o link https://lojaonlineclaro.com.br
Test Teardown    Close Browser

*** Test Case ***
CT001 – Consultar Smartfone
    Usuario clica na busca: ‘Qual Smartphone voce deseja’ e informa o nome do aparelho.
    Usuario clica no modelo que deseja visualizar

#
#CT002 – Alterar Localização
#    Usuario clica no icone de Localizacao posicionada na parte superior direita
#    Usuario informa CEP valido
#    Usuario clica no botão Aproveite!

#
#CT003 – Consultar CEP
#    Usuario clica no icone de Localizacao posicionada na parte superior direita
#    Usuario escolhe a opcao Nao sei meu CEP 
#    Usuario informa todos os campos e clica no botao Buscar
#    Usuario informa no campo Endereco um nome inexistente e clica no botao Buscar
#    Usuario informa no campo endereco um nome abreviado ou somente numeros e clica no botao Buscar
#    Usuario informa um endereço com menos de 5 letras
#    Usuario nao informa o campo UF e clica no botao Buscar Endereco
#    Usuario nao informa o campo Cidade e clica no botao Buscar Endereco
#    Usuario nao informa o campo Endereco e clica no botao Buscar Endereco
#    Usuario informa no campo Endereco apenas um caracter e clica no botao Buscar Endereco
