Quando('acesso a janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'

   # Janela recebe ação executada através do link.
   # janela = window_opened_by do
   #     click_link 'Clique aqui'
   # end

   # altera o foco para a janela
   # within_window janela do
   #
   #     expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
   #     @mensagem = find(".red-text.text-darken-1.center")
   #     expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
   #
   #     janela.close
   # end

    windows.last
    click_link 'Clique aqui'

    switch_to_window windows.last

    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find(".red-text.text-darken-1.center")
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

    windows.last.close

end
  
Quando('acesso o alerta e executo uma ação') do
    visit '/mudancadefoco/alert'

    find('button[onclick="jsAlert()"]').click
    page.accept_alert

    find('button[onclick="jsConfirm()"]').click
    page.dismiss_confirm

    find('button[onclick="jsConfirm()"]').click
    page.accept_confirm

    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with:'Lucas')

    find('button[onclick="jsPrompt()"]').click
    page.dismiss_prompt
    
end