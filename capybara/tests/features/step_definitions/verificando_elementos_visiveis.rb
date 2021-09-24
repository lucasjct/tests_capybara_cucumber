Quando('clico no botão') do
    visit '/buscaelementos/botoes'
    find('#teste').click    
end

Então('Verifico se a mensagem foi exibida') do
    page.has_text?('Você Clicou no Botão!')
end