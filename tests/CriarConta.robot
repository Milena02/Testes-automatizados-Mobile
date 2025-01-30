***Settings***

Library     AppiumLibrary
Resource    ../resources/base.resource


**Test Cases**
Caso de teste 01 - Link Criar Conta
    [Documentation]    Clica em criar conta na tela de login
    [Tags]    Tela Criar Conta
    Start session
    Wait Until Page Contains     text=ENTRAR
    link 'Criar Conta'
Caso de Teste 02 - Cria conta com credenciais corretas
    [Documentation]    Valida a criação de conta com os campos preenchidos corretamente
    [Tags]   Conta criada
    Start session
    Wait Until Page Contains     text=ENTRAR
    link 'Criar Conta'
    Tela 'Criar conta'
    Preencher o campo 'Nome'
    Preencher o campo 'Email'
    Preencher o campo 'Senha'
    Confirmar senha
    Aceitar os termos
    Clicar em 'Cadastrar'
    

#Caso de Teste - Tentativa de criação de conta com email existente

Caso de Teste 03 - Mensagem de erro sobre email inválido
    [Documentation]    Tentativa de criação de conta com email invalido
    [Tags]   Mensagem 'Por favor, informe um endereço de e-mail válido.' exibida
    Start session
    Wait Until Page Contains    text=ENTRAR
    link 'Criar Conta'
    Wait Until Page Contains    text=Crie Sua Conta
    Tela 'Criar conta'
    Preencher o campo 'Nome'
    Preencher o campo 'Email' com email inválido
    Preencher o campo 'Senha'
    Confirmar senha
    Aceitar os termos
    Clicar em 'Cadastrar'
    Mensagem indicando email inválido
    


Caso de Teste 04 - Mensagem de erro sobre senha fraca
    [Documentation]    Tentativa de criação de conta com senha fraca
    [Tags]   Mensagem 'Senha fraca. Use números e letras maiúsculas e minúsculas.' exibida
    Start session
    Wait Until Page Contains     text=ENTRAR
    link 'Criar Conta'
    Tela 'Criar conta'
    Preencher o campo 'Nome'
    Preencher o campo 'Email'
    Preencher o campo 'Senha' com senha fraca
    Confirmar senha fraca
    Aceitar os termos
    Clicar em 'Cadastrar'
    Mensagem indicando senha fraca


Caso de Teste 05 - Tentativa de criação de conta com senhas divergêntes
    [Documentation]    Tentativa de criação de conta com senhas divergêntes
    [Tags]   Mensagem 'As senhas não coincidem. Tente novamente.' exibida
    Start session
    Wait Until Page Contains     text=ENTRAR
    link 'Criar Conta'
    Tela 'Criar conta'
    Deixar o campo 'Nome' em branco
    Preencher o campo 'Email'
    Preencher o campo 'Senha'
    Preencher com senha diferente
    Aceitar os termos
    Clicar em 'Cadastrar'
    Mensagem indicando senhas divergente


Caso de Teste 06 - Tentativa de criação de conta com campo nome em branco
    [Documentation]    Tentaviva de criação de conta com campo nome em branco
    [Tags]    Mensagem de campo Obrigatório.
    Start session
    Wait Until Page Contains     text=ENTRAR
    link 'Criar Conta'
    Tela 'Criar conta'
    Deixar o campo 'Nome' em branco
    Preencher o campo 'Email'
    Preencher o campo 'Senha'
    Confirmar senha
    Aceitar os termos
    Clicar em 'Cadastrar'
    Mensagem indicando campo Nome em branco

Caso de Teste 07 - Tentativa de criação de conta com campo email em branco
    [Documentation]    Tentativa de criação de conta com campo email em branco
    [Tags]    Mensagem de campo Obrigatório.
    Start session
    Wait Until Page Contains     text=ENTRAR
    link 'Criar Conta'
    Tela 'Criar conta'
    Deixar o campo 'Nome' em branco
    Preencher o campo 'Email'
    Preencher o campo 'Senha'
    Confirmar senha
    Aceitar os termos
    Clicar em 'Cadastrar'
    Mensagem indicando campo email em branco


#Caso de Teste 08 - Tentativa de criação de conta com  campo senha em branco

#Caso de Teste 09 - Tentativa de criação de conta com check-points em branco

#Caso de Teste 10 - Tentativa de criação de conta com todos os campos e check-points em branco
    