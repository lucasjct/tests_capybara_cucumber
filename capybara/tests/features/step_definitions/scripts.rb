Quando('Executo o scripts') do
    visit '/outros/scroll'
    page.execute_script('window.scrollBy(0,1500)')

    @result = page.evaluate_script('4+6');
    puts @result

    sleep(3)
end