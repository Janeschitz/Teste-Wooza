*** Settings ***
Library  SeleniumLibrary

*** Variable  ***
${LOGO_CLARO}  id=logo-claro
${CAMPO_BUSCA}  xpath=//*[@data-test="ahead-search-input"]
${LISTA_PRODUTO}  xpath=//*[@class="cdk-overlay-pane"]
${PRIMEIRA_OPCAO}  xpath=//*[@data-test="search-result-0"]
${BOTAO_LOCALIZACAO}  xpath=//button[@data-test="region-modal-btn"]
${INPUT_CEP}  xpath=//input[@data-test="cep-number-input"]
${LINK_NAO_SEI_CEP}  xpath=//a[@data-test="dont-know-cep"]
${NOME_PRODUTO}  xpath=//*[@data-test="device-name-iphone-11-64gb"]


*** Keywords ***
Acessar o link https://lojaonlineclaro.com.br
  Open Browser  about:blank  chrome
  Maximize Browser Window
  Go To  https://lojaonlineclaro.com.br
  Page Should Contain Element  ${LOGO_CLARO}

Usuario clica na busca: ‘Qual Smartphone voce deseja’ e informa o nome do aparelho.
  Input Text  ${CAMPO_BUSCA}  Iphone 11
  Wait Until Element Is Visible  ${LISTA_PRODUTO}
  Page Should Contain Element  ${LISTA_PRODUTO}

Usuario clica no icone de Localizacao posicionada na parte superior direita
  Click Button  ${BOTAO_LOCALIZACAO}
  Page Should Contain Element  ${INPUT_CEP}
  Page Should Contain Element  ${LINK_NAO_SEI_CEP}

Usuario clica no modelo que deseja visualizar
  Click Element  ${PRIMEIRA_OPCAO}  
  Wait Until Element Is Visible  ${NOME_PRODUTO}  timeout=30
  Page Should Contain Element  ${NOME_PRODUTO} 

Usuario informa CEP
  Input Text  ${INPUT_CEP}  69900279



Usuario clica no botão Aproveite!
Usuario informa CEP inválido Ex: 00000-000
Usuario informa CEP incompleto
Usuario nao informa CEP e aciona a tecla <Enter>

Usuario escolhe a opcao Nao sei meu CEP
Usuario informa todos os campos e clica no botao Buscar
Usuario informa no campo Endereco um nome inexistente e clica no botao Buscar
Usuario informa no campo endereco um nome abreviado ou somente numeros e clica no botao Buscar
Usuario informa um endereço com menos de 5 letras
Usuario nao informa o campo UF e clica no botao Buscar Endereco
Usuario nao informa o campo Cidade e clica no botao Buscar Endereco
Usuario nao informa o campo Endereco e clica no botao Buscar Endereco
Usuario informa no campo Endereco apenas um caracter e clica no botao Buscar Endereco