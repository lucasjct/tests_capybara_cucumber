Quando('interajo com elemento') do
    visit '/buscaelementos/botoes'
    find('#teste').click 
end

  Então('devo garantir que ele desapareceu') do
    page.has_text?('Você Clicou no Botão!')
    find('#teste').click 
    page.has_no_text?('Você Clicou no Botão!')
end