class MapearElementos < SitePrism::Page 
    set_url 'users/new'
    element :nome, '#user_name'
    element :ultimo_nome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :submeter, '.actions.btn.waves-effect.green'

    def preencher
        nome.set 'lucas'  
        ultimo_nome.set 'teixeira'
        email.set 'teste@gmail.com'
        endereco.set 'Rua das casas'
        universidade.set 'Universidade Estadual Paulista'
        profissao.set 'Analista de Testes'
        genero.set 'Masculino'
        idade.set '32'
    end

    def enviar
        submeter.click 
        
    end
end