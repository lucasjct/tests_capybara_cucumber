Quando('clico no botão') do
    @ajax = Ajax.new
    @ajax.load
    @ajax.interagir

end
  
Então('verifico se apareceu') do
    @ajax.wait_until_mensagem_visible
    expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!' 
end