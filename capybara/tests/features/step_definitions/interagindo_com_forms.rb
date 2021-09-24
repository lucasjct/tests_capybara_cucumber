Quando('realizo o Cadastro') do

    visit '/users/new'
    fill_in(id:'user_name', with: 'Lucas')
    find_by_id('user_lastname').set('Teixeira')
    find('#user_email').send_keys('lucasjcteixeira@gmail.com')

    fill_in(id:'user_address', with: 'Rua Vicente Celestino')
    find_by_id('user_university').set('Universidade Estadual Paulista')
    find('#user_profile').send_keys('Analista de Testes')

    fill_in(id:'user_gender', with: 'Masculino')
    find('#user_age').set('32')

    find('input[type="submit"]').click
end

Então('verifico se fui cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql "Usuário Criado com sucesso"

end