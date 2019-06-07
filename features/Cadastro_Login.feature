#language: pt

Funcionalidade: Adicionar Login
Validação do Login Criado


@criacao_login_sucesso
Cenario: Adicionar Login com sucesso
Dado que estou na tela de criar login
Quando preencho campo username e password campos com dados validos
Entao recebo username e password cadastrado

@criacao_login_sucesso
Cenario: Acessar tela de Login com sucesso
Dado que estou na tela de criar login
Quando clico no menu Login
Entao sou direcionado para a tela de validar Login

@criacao_login_sucesso
Cenario: Validar Login
Dado preencho os campos com login criado
Entao recebo mensagem de sucesso