Dado('que possuo {int} laranjas.') do |valor1|
    @laranjas = valor1
    puts @laranjas
end
    
Quando('eu como {int} laranjas.') do |valor2|
    @comer = @laranjas - valor2
end
    
Então('vejo quantas laranjas sobraram.') do
    expect(@comer).to eq 8   
end

Quando('eu acrescento {int} laranjas.') do |comprar_laranja|
    @compra_total = @laranjas + comprar_laranja
end
    
Então('vejo quantas laranjas possuo.') do
    expect(@compra_total).to eq 12
    puts @compra_total 
end
    