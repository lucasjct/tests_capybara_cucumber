class Ajax < SitePrism::Page 
    set_url 'buscaelementos/botoes'
    element :botao, '#teste'
    element :mensagem, '#div1'

    def interagir
        botao.click
    end

end