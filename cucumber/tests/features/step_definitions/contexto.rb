Dado('que tenho {int} laranjas na cesta') do |laranjas|
    @cesta = laranjas
end

Quando('Adiciono {int} duas laranjas na cesta') do |add_laranja|
    @total = @cesta + add_laranja
end

Então('devo ficar com {int}') do |resultado|
expect(@total).to eq resultado
end

Quando('retiro {int} laranjas da cesta') do |retirar|
 @decrementar = @cesta - retirar
 puts @cesta
end

Então('devo ficar com {int} laranjas') do |sobra|
   expect(@decrementar).to eq sobra
end