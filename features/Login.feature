#language: pt

Funcionalidade: Login
Campo livre para anotação

Contexto: 
	Dado que estou na tela de login
    
@login_invalido_em_branco 
Cenario: Login Invalido com campos nulos
    Quando realizo o login
    Entao recebo mensagem de erro

@login_sucesso
Cenario: Login com sucesso
    E preencho os campos com dados validos
    Quando realizo o login
    Entao Login realizado com sucesso

@Login_senha_invalida
Cenario: Login senha incorreta
    E eu digito usuario correto e senha incorreta 
    Quando realizo o login
    Entao sistema exibe mensagem de erro senha inválida

@valida_url
Cenario: Entrar na URL logada
    Dado que acesso a URL da area logada
    Então recebo mensagem de erro URL
    E sou redirecionado para a tela de login