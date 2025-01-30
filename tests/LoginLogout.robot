***Settings***
Library     AppiumLibrary
Resource    ../resources/base.resource

**Test Cases**
Caso de teste 01 - Validação da tela de login
    [Documentation]    Tela login
    [Tags]    Aplicativo e tela login
    Start session
    Wait Until Page Contains     text=ENTRAR
    Logo Mormaii
    Titulo do campo Email
    Titulo do campo Senha
    Link 'Esqueceu sua senha'
    Texto 'Entrar com'
    Ícone Google
    Ícone Apple
    Texto para criação de conta
    Close Application
   
    

Caso de teste 02 - Acesso ao perfil
    [Documentation]        Esse teste faz login com credenciais válidas
    [Tags]    Login realizado
    Start session
    Wait Until Page Contains     text=ENTRAR
    Deve preencher email
    Deve preencher senha
    Deve clicar em Entrar
    Close Application

Caso de teste 03 - Validar opções na tela perfil
    [Documentation]        Valida o link 'conectar depois'
    [Tags]    Realizar login
    Start session
    Wait Until Page Contains     text=ENTRAR
    Deve preencher email
    Deve preencher senha
    Deve clicar em Entrar
    Wait Until Page Contains     text=Conectar depois
    Close Application


Caso de teste 04 - Validar o link do perfil na tela home
    [Documentation]    Valida o link de acesso ao perfil na Home
    [Tags]    Tela perfil
    Start session
    Wait Until Page Contains     text=ENTRAR
    Deve preencher email
    Deve preencher senha
    Deve clicar em Entrar
    Wait Until Page Contains     text=Conectar depois
    Deve Clicar 'conectar depois'
    Wait Until Page Contains     text=Ver perfil
    Clicar no 'perfil'
    Close Application
   
Caso de teste 05- Valida opção 'Sair' no perfil
    [Documentation]       Esse teste valida a opção 'Sair' no perfil
    [Tags]                Opção Sair exibida do perfil
    Start session
    Wait Until Page Contains     text=ENTRAR
    Deve preencher email
    Deve preencher senha
    Deve clicar em Entrar
    Wait Until Page Contains     text=Conectar depois
    Deve Clicar 'conectar depois'
    Wait Until Page Contains     text=Ver perfil
    Clicar no 'perfil'
    Wait Until Page Contains    text=Alterar senha
    Clicar em 'Sair'
    Exibir Pop-up de confirmacao de logout
    

Caso de teste 06 -Valida a opção "Sim" ao clicar para sair do perfil
   [Documentation]       Esse teste valida a opção 'Sim' ao clicar em sair do perfil
    [Tags]                Sai do perfil
    Start session
    Wait Until Page Contains     text=ENTRAR
    Deve preencher email
    Deve preencher senha
    Deve clicar em Entrar
    Wait Until Page Contains     text=Conectar depois
    Deve Clicar 'conectar depois'
    Wait Until Page Contains     text=Ver perfil
    Clicar no 'perfil'
    Wait Until Page Contains    text=Alterar senha
    Clicar em 'Sair'
    Exibir Pop-up de confirmacao de logout
    Clicar em "Sim"
  

Caso de Teste 07- Valida a opção "Não" ao clicar para sair do perfil
    [Documentation]       Esse teste valida a opção 'Não' ao clicar em sair do perfil
    [Tags]                Continuar no perfil
    Start session
    Wait Until Page Contains     text=ENTRAR
    Deve preencher email
    Deve preencher senha
    Deve clicar em Entrar
    Wait Until Page Contains     text=Conectar depois
    Deve Clicar 'conectar depois'
    Wait Until Page Contains     text=Ver perfil
    Clicar no 'perfil'
    Wait Until Page Contains    text=Alterar senha
    Clicar em 'Sair'
    Exibir Pop-up de confirmacao de logout
    Clicar em "Não"

Caso de Teste 08 - Validar pop-up de credenciais invalidas
    [Documentation]        Esse teste tenta fazer login com credenciais inválidas
    [Tags]    Pop-up de erro exibida
    Start session
    Wait Until Page Contains     text=ENTRAR
    Email invalido
    Senha invalida
    Deve clicar em Entrar
    Exibir pop-up de credenciais inválidas


Caso de teste 09 - Validar mensagens de erro no perfil
    [Documentation]        Esse teste tenta fazer login sem credenciais
    [Tags]    Mensagens de erro exibidas
    Start session
    Wait Until Page Contains     text=ENTRAR
    Email vazio     
    Senha vazia
    Deve clicar em Entrar
    Mensagem 'Campo obrigatório' exibida
