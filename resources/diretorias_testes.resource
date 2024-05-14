*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    String
Resource   ../resources/login_testes.resource

*** Variables ***
#Settings
${cadastrosElement}       //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${diretoriaElement}       //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${novoCadastroButton}     //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${nomeSpace}              //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${salvarNovoButton}       //button[@type='submit'][contains(.,'SALVAR NOVO')]
${editDiretoriaButton}    (//button[@name='editar'][contains(.,'Editar')])[1]
${editNameSpace}          //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${salvarAlteracaoButton}  //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]

#Elements
${perfilAcessoInput}      ADMIN
${senhaCadastroInput}     1234@Test
${confirmarSenhaInput}    1234@Test

*** Keywords ***
Cadastro 1 - Clicar em Cadastro
  Click Element     locator=${cadastrosElement}

Cadastro 2 - Clicar em Diretorias
  Click Element     locator=${diretoriaElement}

Cadastro 3 - Clicar em Novo Cadastro Diretoria
  Wait Until Element Is Visible  locator=${novoCadastroButton}
  Click Button      locator=${novoCadastroButton}
  Sleep             5s 

Cadastro 4 - Clicar no campo 'Dados da Diretoria' e digitar Nome
  ${nameDiretoria}  FakerLibrary.Name
  Click Element     locator=${nomeSpace}
  Input Text        locator=${nomeSpace}    text=${nameDiretoria}

Cadastro 5 - Clicar no botão 'Salvar Nova Diretoria'
  Click Button      locator=${salvarNovoButton}
  Sleep             5s 

Editar 1 - Clicar no botão 'Editar' Diretoria
  Click Button      locator=${editDiretoriaButton}

Editar 2 - Clicar no campo 'Nome da Diretoria' e alterar Nome
  ${EditNameDiretoria}    FakerLibrary.Name
  Click Element     locator=${editNameSpace}
  Input Text        locator=${editNameSpace}    text=${EditNameDiretoria}
Editar 3 - Clicar no botão 'Salvar Alterações'
  Click Button      locator=${salvarAlteracaoButton}