*** Settings ***
Resource  ../resources/login_testes.resource
Resource  ../resources/usuarios_testes.resource
Resource  ../resources/diretorias_testes.resource
Test Setup  Abrir o navegador

*** Test Cases ***
Cenário 1: Login
  Login 1 - Acessar a página Qa.Coders Academy
  Login 2 - Clicar no campo e-mail e digitar e-mail 
  Login 3 - Clicar no campo senha e digitar senha 
  Login 4 - Clicar no botão Entrar

Cenário 2: Usuário
  Login 1 - Acessar a página Qa.Coders Academy 
  Login 2 - Clicar no campo e-mail e digitar e-mail 
  Login 3 - Clicar no campo senha e digitar senha 
  Login 4 - Clicar no botão Entrar
  Cadastro 1 - Clicar em Cadastros
  Cadastro 2 - Clicar em Usuários
  Cadastro 3 - Clicar no Botão Novo Cadastro Usuário
  Cadastro 4 - Clicar no campo 'Nome Completo' e digitar Nome Completo
  Cadastro 5 - Clicar no campo 'Email' e digitar email
  Cadastro 6 - Clicar no campo 'Perfil de Acesso' e digitar Perfil
  Cadastro 7 - Clicar no campo 'CPF' e digitar CPF
  Cadastro 8 - Clicar no campo 'Senha' e digitar Senha
  Cadastro 9 - Clicar no campo 'Confirme a sua senha' e confirmar senha
  Cadastro 10 - Clicar no botão 'Salvar Novo Usuário'
  Editar 1 - Clicar no botão 'Editar' Usuário 
  Editar 2 - Clicar no campo 'Nome Completo' e alterar Nome
  Editar 3 - Clicar no campo 'Email' e digitar email
  Editar 4 - Clicar no botão 'Salvar Alterações'
  Logout - Clicar no botão 'Logout'

Cenário 3: Diretoria
  Login 1 - Acessar a página Qa.Coders Academy 
  Login 2 - Clicar no campo e-mail e digitar e-mail 
  Login 3 - Clicar no campo senha e digitar senha 
  Login 4 - Clicar no botão Entrar
  Cadastro 1 - Clicar em Cadastro
  Cadastro 2 - Clicar em Diretorias 
  Cadastro 3 - Clicar em Novo Cadastro Diretoria
  Cadastro 4 - Clicar no campo 'Dados da Diretoria' e digitar Nome
  Cadastro 5 - Clicar no botão 'Salvar Nova Diretoria'
  Editar 1 - Clicar no botão 'Editar' Diretoria
  Editar 2 - Clicar no campo 'Nome da Diretoria' e alterar Nome 
  Editar 3 - Clicar no botão 'Salvar Alterações'
  Logout - Clicar no botão 'Logout'