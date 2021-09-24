Quando('caluculo uma Média') do
    @media = @soma/2
end
Então('deve obter um resultado final') do
    expect(@media).to eq 5
end
  