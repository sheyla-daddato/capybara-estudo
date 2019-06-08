Dado("que estou na tela de criar login") do
    @cadastro = CadastroPage.new
    @cadastro.acessar_url
end

Quando("preencho campo username e password campos com dados validos") do
    @cadastro.preencher_dados_validos
end
  
Então("recebo username e password cadastrado") do
    @cadastro.username_password
end

Quando("clico no menu Login") do
    @cadastro.clicar_login
end
  
Então("sou direcionado para a tela de validar Login") do
    @cadastro.acessar_demologin
end

Dado("que estou na tela de validar login") do
    @cadastro = CadastroPage.new
    @cadastro.acessar_url_login
end

Quando("preencho os campos com login criado") do
    @cadastro.preencher_login_criado
end

Então("recebo mensagem de sucesso") do
    @cadastro.login_validado_sucesso
end