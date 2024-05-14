*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    String
Resource   ../resources/login_testes.resource

*** Variables ***
#Settings
${cadastrosElement}           //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${userElement}                //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${novoCadastroButton}         //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${nomeCompletoSpace}          //input[contains(@name,'fullName')]
${emailCadastroSpace}         //input[contains(@name,'mail')]
${perfilAcessoSpace}          //input[contains(@name,'accessProfile')]
${cpfSpace}                   //input[contains(@name,'cpf')]
${senhaCadastroSpace}         //input[contains(@name,'password')]
${confirmarSenhaSpace}        //input[contains(@name,'confirmPassword')]  
${salvarNovoButton}           //button[@type='submit'][contains(.,'SALVAR NOVO')] 
${editCadastroButton}         (//button[@id='edit'])[1]
${editNomeCompleto}           //input[contains(@name,'fullName')]
${editEmailButton}            //input[contains(@name,'mail')]
${confirmarAlteracoesButton}  //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${logoutButton}               //button[@class='css-1nvbq2d'][contains(.,'Logout')]  

#Elements
${perfilAcessoInput}          ADMIN
${senhaCadastroInput}         1234@Test
${confirmarSenhaInput}        1234@Test


*** Keywords ***
Cadastro 1 - Clicar em Cadastros
  Click Element    locator=${cadastrosElement}

Cadastro 2 - Clicar em Usuários
  Click Element    locator=${userElement}

Cadastro 3 - Clicar no Botão Novo Cadastro Usuário 
  Wait Until Element Is Visible  locator=${novoCadastroButton}
  Click Button     locator=${novoCadastroButton}
  Sleep            5s 

Cadastro 4 - Clicar no campo 'Nome Completo' e digitar Nome Completo
  ${fullName}      FakerLibrary.Name
  Click Element    locator=${nomeCompletoSpace}
  Input Text       locator=${nomeCompletoSpace}    text=${fullName}

Cadastro 5 - Clicar no campo 'Email' e digitar email
  ${email}         FakerLibrary.First Name
  ${email}         Convert To Lower Case    ${email}
  Click Element    locator=${emailCadastroSpace}
  Input Text       locator=${emailCadastroSpace}    text=${email}@qacoders.com.br

Cadastro 6 - Clicar no campo 'Perfil de Acesso' e digitar Perfil
  Click Element    locator=${perfilAcessoSpace}
  Input Text       locator=${perfilAcessoSpace}    text=${perfilAcessoInput}

Cadastro 7 - Clicar no campo 'CPF' e digitar CPF
  Click Element    locator=${cpfSpace}
  ${cpfInput}      Generate Random String    length=11   chars=[NUMBERS]
  Input Text       locator=${cpfSpace}    text=${cpfInput}

Cadastro 8 - Clicar no campo 'Senha' e digitar Senha
  Click Element    locator=${senhaCadastroSpace}
  Input Password   locator=${senhaCadastroSpace}     password=${senhaCadastroInput}
Cadastro 9 - Clicar no campo 'Confirme a sua senha' e confirmar senha
  Click Element    locator=${confirmarSenhaSpace}
  Input Password   locator=${confirmarSenhaSpace}     password=${confirmarSenhaInput}
Cadastro 10 - Clicar no botão 'Salvar Novo Usuário'
  Click Button     locator=${salvarNovoButton}
  Sleep            5s 

Editar 1 - Clicar no botão 'Editar' Usuário
  Click Button     locator=${editCadastroButton}

Editar 2 - Clicar no campo 'Nome Completo' e alterar Nome
  ${fullNameEdit}  FakerLibrary.Name
  Click Element    locator=${editNomeCompleto}
  Input Text       locator=${editNomeCompleto}    text=${fullNameEdit}

Editar 3 - Clicar no campo 'Email' e digitar email
  ${emailEdit}     FakerLibrary.First Name
  ${emailEdit}     Convert To Lower Case    ${emailEdit}
  Click Element    locator=${editEmailButton}
  Input Text       locator=${editEmailButton}    text=${emailEdit}

Editar 4 - Clicar no botão 'Salvar Alterações'
  Click Button     locator=${confirmarAlteracoesButton}

Logout - Clicar no botão 'Logout'
  Click Button    locator=${logoutButton}