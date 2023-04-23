Feature: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Background: Dado que escolha um produto no site

Scenario: Itens obrigatório
When eu escolher um produto
And Clicar no produto
Then os campos de cor, tamanho, quantidade devem estar marcados como obrigatórios

Scenario: Limite no carrinho
When eu terminar a escolha de um produto
And clicar em ir para pagamento
Then o sistema deve permitir somente a compra de 10 produtos 


Scenario: Limpar seleção
When eu escolher os atributos do produto
And clicar no botão Limpar
Then o sistema deve retirar toda a seleção de atributo realizada