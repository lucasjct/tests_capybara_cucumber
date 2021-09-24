
Quando('importo uma imagem') do
    visit '/outros/uploaddearquivos'
    @imagem = File.join(Dir.pwd,'features/image.jpeg')
    attach_file('upload',@imagem, make_visible:true)

    sleep(5)
   
end
  