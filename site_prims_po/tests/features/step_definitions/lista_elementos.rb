Quando('mapeio uma tabela') do
   @listas = ListaElementos.new
   @listas.load
   @tamanho =  @listas.lista.size

   expect(@tamanho).to eql 24
   #puts @listas.lista[0].text

   @listas.lista.each do |elemntos_lista|
      #puts elemntos_lista.text
   end
end