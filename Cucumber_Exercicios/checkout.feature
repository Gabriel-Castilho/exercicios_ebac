#language:pt
Funcionalidade: Checkout

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra


    Contexto: Dado que eu acesse a página de checkout da loja EBAC

    Esquema do Cenário: Dados obrigatórios
        Quando eu preencher os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>,<telefone>,<email>
        E clicar em finalizar compra
        Então deve exibir a <mensagem>

            | nome      | sobrenome  | pais     | endereco               | cidade      | cep         | telefone     | email                           | mensagem                      |
            | "Gabriel" | "Oliveira" | "Brasil" | "Rua treze, 36"        | "São Paulo" | "123456856" | "1140028922" | "gabriel.oliveira@gmail.com.br" | "Compra efetuada com sucesso" |
            | "Maria"   | "Santos"   | "Brasil" | "Rua dos Morangos, 40" | "São Paulo" | "123456856" | "1148895411" | "maria.santos@gmail.com.br"     | "Compra efetuada com sucesso" |
            | "João"    | "Mattos"   | "Brasil" | "Rua da Praça, 568"    | "Manaus"    | "123456856" | "2589955688" | "joao.mattos@gmail.com.br"      | "Compra efetuada com sucesso" |
            | "Gabriel" | "Oliveira" | "Brasil" | "Rua treze, 36"        | "São Paulo" | "123456856" | "1140028922" | "gabriel.oliveiragmail.com.br"  | "Formato de email inválido"   |
            | "Maria"   | "Santos"   | "Brasil" | "Rua dos Morangos, 40" | "São Paulo" | "123456856" | "1148895411" | "maria.santos@gmailcombr"       | "Formato de email inválido"   |
            | "João"    | "Mattos"   | "Brasil" | "Rua da Praça, 568"    | "Manaus"    | "123456856" | "2589955688" | "joao.mattos"                   | "Formato de email inválido"   |
            | "Gabriel" | ""         | "Brasil" | "Rua treze, 36"        | "São Paulo" | "123456856" | "1140028922" | "gabriel.oliveiragmail.com.br"  | "Sobrenome é obrigatório"     |
            | "Maria"   | "Santos"   | "Brasil" | ""                     | "São Paulo" | "123456856" | "1148895411" | "maria.santos@gmailcombr"       | "Endereço é obrigatório"      |
            | ""        | "Mattos"   | "Brasil" | "Rua da Praça, 568"    | "Manaus"    | "123456856" | "2589955688" | "joao.mattos"                   | "Nome é obrigatório"          |
            | "Gabriel" | "Oliveira" | ""       | "Rua treze, 36"        | "São Paulo" | "123456856" | "1140028922" | "gabriel.oliveira@gmail.com.br" | "País é obrigatório"          |
            | "Maria"   | "Santos"   | "Brasil" | ""                     | "São Paulo" | "123456856" | "1148895411" | "maria.santos@gmail.com.br"     | "Endereço é obrigatório"      |
            | "João"    | "Mattos"   | "Brasil" | "Rua da Praça, 568"    | ""          | "123456856" | "2589955688" | "joao.mattos@gmail.com.br"      | "Cidade é obrigatório"        |
            | "Gabriel" | "Oliveira" | "Brasil" | "Rua treze, 36"        | "São Paulo" | ""          | "1140028922" | "gabriel.oliveiragmail.com.br"  | "CEP é obrigatório"           |
            | "Maria"   | "Santos"   | "Brasil" | "Rua dos Morangos, 40" | "São Paulo" | "123456856" | ""           | "maria.santos@gmailcombr"       | "telefone é obrigatório"      |
            | "João"    | "Mattos"   | "Brasil" | "Rua da Praça, 568"    | "Manaus"    | "123456856" | "2589955688" | ""                              | "Email é obrigatório"         |

    