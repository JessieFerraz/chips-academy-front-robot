*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Settings
${URL}           https://automacao.qacoders-academy.com.br/login
${emailSpace}    //input[contains(@type,'text')]
${senhaSpace}    //input[contains(@type,'password')]
${entrarButton}  //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]  

#Elements
${emailInput}    sysadmin@qacoders.com
${senhaInput}    1234@Test 

*** Keywords ***
Abrir o navegador
  Open Browser  browser=chrome
  Maximize Browser Window

Login 1 - Acessar a página Qa.Coders Academy
  Go To    url=${URL}

Login 2 - Clicar no campo e-mail e digitar e-mail
  Wait Until Element Is Visible  locator=${emailSpace}
  Click Element                  locator=${emailSpace}
  Input Text    locator=${emailSpace}    text=${emailInput}

Login 3 - Clicar no campo senha e digitar senha
  Click Element    locator=${senhaSpace}
  Input Password    locator=${senhaSpace}     password=${senhaInput}       

Login 4 - Clicar no botão Entrar
  Click Button    locator=${entrarButton}
  Sleep           5s 