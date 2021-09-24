#language:pt

Funcionalidade: Trabalhar Cenários com Contexto

Contexto:
Dado que tenho 10 laranjas na cesta

@add_laranja
Cenário: Adicionar laranjas 
Quando Adiciono 2 duas laranjas na cesta
Então devo ficar com 12

Cenário: Retirar Laranja.
Quando retiro 2 laranjas da cesta
Então devo ficar com 8 laranjas