Feature: Login

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Background: Dado que eu acesse a página de autenticação da loja EBAC

Scenario: Dados válidos
When eu digitar o usuário "gabriel_valido@ebac.com.br"
E a senha "senhaCorreta"
Then o sistema deve redirecionar para tela de checkout

Scenario: Email inválido
When eu digitar o usuário "gabriel_invalido@ebac.com.br"
E a senha "senhaCorreta"
Then o sistema deve exibir uma mensagem de "Usuário ou senha inválidos"

Scenario: Senha incorreta
When eu digitar o usuário "gabriel_valido@ebac.com.br"
E a senha "senhaIncorreta"
Then o sistema deve exibir uma mensagem de "Usuário ou senha inválidos"