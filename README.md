# capybara, cucumber e site_prism  

Neste projeto temos três gems que voltadas para testes automatizado.  

1. [__Cucumber__](./cucumber)  
Com Cucumber posso escrever a validação em BDD (Behavior Driven Development), baseando os testes em funcionalidades da aplicação e suas regras de negócio.  

Para saber mais sobre Cucumber:   
[Cucumber Ofcial](https://cucumber.io/)  

Exemplo de projeto de escrita BDD no projeto.
Acessar qualquer arquivo do diretório:  
[Specs](./cucumber/tests/features/specs)   

 2. [__Capybara__](./capybara)     
Para interagir com os elementos da página dentro doBrowser, temos o Capybara, um framework escrito em Ruby voltado para automação de testes que implementa o SeleniumWebDriver.   

Documentação Oficial:   
[Capybara](https://teamcapybara.github.io/capybara/)    

Exemplo de automação escrito com Capybara: acessar o diretório:  
[Projeto Capybara](./capybara)     

3. [__Site Prism__](./site_prims_po)    
O Site Prims permite organizar a automação no padrão Page Object. Isto é, uma vez que construi a automação com  [Capybara](./capybara) e [BDD](./cucumber/tests/features/specs), posso criar uma classe para cada página que irei interagir no teste.  
Nesta [classe](./site_prims_po/tests/features/pages), defino os atributos que são os seletores e os métodos que implementam estes seletores. Após isso, instâncio a classe em um objeto que ficará responsável pela automação dentro do diretório [step_definition](./site_prims_po/tests/features/step_definitions). 