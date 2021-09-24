Quando('acesso a url de botões') do

    visit '/buscaelementos/botoes'
    
end
Então('os elementos deve ser acessado com sucesso') do
    # Busca por todo elemento que contenha o all
    page.all(:css,'.btn')
    # Busca 1 elemento mapeado
    find('#teste')
    # Busca pelo ID
    find_by_id('teste')
    #Busca pelo botão
    find_button(class:'btn waves-light')
    # Busca pelo primeiro elemento que contenha a classe
    first('.btn')
    # Busca pelo link
    find_link(href:'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end
