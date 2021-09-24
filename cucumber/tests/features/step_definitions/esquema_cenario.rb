Quando('eu multiplico minhas {int} por {int}') do |laranjas, valor|
    @multiplicacao = laranjas * valor

end
    
Então('tenho como {int} da multiplicação') do |resultado|
    expect(@multiplicacao).to eq resultado
end
    
    