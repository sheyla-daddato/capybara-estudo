class CadastroPage
    include Capybara::DSL

    def acessar_url
        visit 'http://thedemosite.co.uk/addauser.php'

    end

    def preencher_dados_validos
        fill_in('username', :with => DADOS['username'])
        fill_in('password', :with => DADOS['password'])
        click_button('save')

    end

    def username_password
        page.has_content?('The username: '+ DADOS['username'])
        page.has_content?('The password: '+ DADOS['password'])
        
    end

    def clicar_login
        click_on('4. Login')

    end

    def acessar_demologin
        page.has_content? ('4. Login')
        
    end

    def preencher_login_criado
        fill_in('username', :with => DADOS['username'])
        fill_in('password', :with => DADOS['password'])
        click_button('Test Login')

    end
    
    def login_validado_sucesso
        page.has_content? ('**Successful Login**')

    end
end