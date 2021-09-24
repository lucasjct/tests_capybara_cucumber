Quando('Preencho formulario') do
    
    @mapeando = MapearElementos.new
    @mapeando.load
    @mapeando.preencher
    @mapeando.enviar
    #@mapeando.nome.set 'teste'
end