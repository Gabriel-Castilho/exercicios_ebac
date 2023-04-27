            #language:pt
            Funcionalidade: Login

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos


            Contexto: Dado que eu acesse a página de autenticação da loja EBAC

            Cenário: Dados válidos
            Quando eu digitar o usuário "gabriel_valido@ebac.com.br"
            E a senha "senhaCorreta"
            Então o sistema deve redirecionar para tela de checkout

            Esquema do Cenário: Dados de autenticação inválido
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então o sistema deve exibir uma mensagem de "Usuário ou senha inválidos"

            Exemplos:
            | usuario                      | senha          | mensagem                   |
            | gabriel.invalido@ebac.com.br | senhaCorreta   | Usuário ou senha inválidos |
            | gabriel.valido@ebac.com.br   | senhaIncorreta | Usuário ou senha inválidos |