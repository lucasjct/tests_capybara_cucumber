Dado('que eu tenha umas laranjas') do |table|
    # iteração em  linhas
    puts @laranja = table.rows_hash['laranja'].to_i
   
end

Quando('eu corto {int} laranjas') do |valor|
    @cortar = @laranja - valor
   
end

Então('eu verifico quantas laranjas sobraram inteiras') do
    expect(@cortar).to eq 8
    
end

Dado('que eu tenha algumas laranjas') do |table|
    # interação em colunas
    table.hashes.each do |valor|
        @laranjas = valor['laranja'].to_i
    end
end
      
Quando('eu chupo {int} laranjas') do |valor2|
   @subtrair = @laranjas - valor2
end

Então('eu verifico quantas sobraram') do
    expect(@subtrair).to eq 8
end
  