Dado('que estou na tela drag en drop') do
    visit 'iteracoes/draganddrop'

    @elemento1 = find('#winston')
    @elemento2 = find('#dropzone') 
end 

Quando('movo um elemento') do
    @elemento1.drag_to(@elemento2)
    sleep(5)
end