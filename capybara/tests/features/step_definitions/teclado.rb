Quando('executo entradas do teclado') do
    visit '/users/new'
    find('#user_name').send_keys(:page_down)
    find('input[type="submit"]').send_keys(:enter)
    sleep(3)    
end
  