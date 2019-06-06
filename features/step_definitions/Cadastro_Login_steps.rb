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
