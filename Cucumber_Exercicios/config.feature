#language:pt
Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: Dado que escolha um produto no site

Cenário: Itens obrigatório
Quando eu escolher um produto
E Clicar no produto
Então os campos de cor, tamanho, quantidade devem estar marcados como obrigatórios

Cenário: Limite no carrinho
Quando eu terminar a escolha de um produto
E clicar em ir para pagamento
Então o sistema deve permitir somente a compra de 10 produtos 


Cenário: Limpar seleção
Quando eu escolher os atributos do produto
E clicar no botão Limpar
Então o sistema deve retirar toda a seleção de atributo realizada