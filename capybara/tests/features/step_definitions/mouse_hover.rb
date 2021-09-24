Quando('seleciono mouse hover') do
    visit '/iteracoes/mousehover'
    find('.card-title').hover
end