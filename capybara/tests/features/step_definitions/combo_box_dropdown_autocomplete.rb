Quando('interajo com select e dropdown') do
    visit '/buscaelementos/dropdowneselect'

    find('.btn.dropdown-button').click
    find('#dropdown3').click
    
    texto = find('#div3')
    expect(texto.text).to eql 'Você Clicou no Dropdown Sent!'
    # Maneira de interagir com select
    select 'Chrome', from:'dropdown' 
    find('option[value="2"]').select_option 
end

Quando('preencho o autocomplete') do
    visit('/widgets/autocomplete')
    find('#autocomplete-input').set 'São'
    find('ul', text: 'São Paulo')

  
end
  