Quando('preencho os campos') do
    # Instanciando a classe Pagina no objeto @form
    @form = Pagina.new
    @form.load
    
    # Iteração no iframe e preenchendo os ids contidos no iframe
    @form.formulario do |iframe|

    iframe.nome.set 'Lucas'
    iframe.sobrenome.set 'Teste'
    end
end