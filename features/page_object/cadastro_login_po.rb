class CadastroPage
    include Capybara::DSL

    def acessar_url
        visit 'http://thedemosite.co.uk/addauser.php'

    end

    def preencher_dados_validos
        fill_in('username', :with => DADOS['username'])
        fill_in('password', :with => DADOS['teste'])
        click_button('save')

    end

    def username_password
        page.has_content?('The username:'+ DADOS['username'])
        page.has_content?('The password:'+ DADOS['teste'])
        
    end

    
end