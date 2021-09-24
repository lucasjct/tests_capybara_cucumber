Quando('entro no Iframe e preencho os campos') do
    # iframe tenho uma tela dentro de outra tela
    visit '/mudancadefoco/iframe'
    within_frame('id_do_iframe') do
        find('#first_name').set('Lucas')
        fill_in(id:'email', with:'lucasjcteixeira@gmail.com')
        find_by_id('password').set('123456')
    end
end

Quando('entro no Modal e preencho os campos') do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click

    within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
        find('.modal-close').click
    end    
end
