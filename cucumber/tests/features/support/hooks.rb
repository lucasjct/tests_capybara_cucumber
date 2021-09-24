Before do
    puts "Execução Global antes de cada cenário"
    @soma = 5 + 5 
end

After do
    puts "Execução Global depois de cada cenário."
end

Before '@comeco' do
    puts "Execução com tag antes de cada cenário."
end

After '@fim' do
    puts "Execução com tag após cada cenário."
end