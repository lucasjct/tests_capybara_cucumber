Quando('interajo com sessoes') do
    @sessao = Page.new
    @sessao.load

    @sessao.navbar.youtube.click
   
end