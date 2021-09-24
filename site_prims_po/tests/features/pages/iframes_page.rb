class Iframes < SitePrism::Page
    # primeiro mapeio os elementos do iframe.
    element :nome, '#first_name'
    element :sobrenome, '#last_name'
    
end

class Pagina < SitePrism::Page
    # Depois herdo a classe Iframe e atribuo variável para o id do iframe.
    set_url 'mudancadefoco/iframe'
    iframe :formulario, Iframes, '#id_do_iframe' 

end