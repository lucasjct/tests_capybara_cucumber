Dado('eu tenho {int} laranjas') do |laranja|
    @laranjas = laranja

end

Quando('amasso {int} laranjas') do |amassadas|
    @amassar = @laranjas - amassadas
end

Então('verifico quantas sobraram') do
    expect(@amassar).to eq 8
end
Quando('revendo {int} laranjas') do |valor2|
    steps %Q{
        Dado eu tenho 10 laranjas
    }
    @revender = @laranjas - valor2
 
end
Então('eu verifico com quantas laranjas fiquei') do
    expect(@revender).to eq 8
end
    