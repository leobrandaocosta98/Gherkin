            #language: pt

            Funcionalidade: Tela do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro do usuário na EBAC SHOP

            Cenário: Cadastro válido
            Quando eu digitar todos os "campos" com asterisco
            E um "e-mail" válido
            Então deve aparecer uma mensagem de "cadastro válido"

            Cenário: Cadastro com e-mail não verificado
            Quando eu digitar todos os "campos" com asterisco
            E um "e-mail" inválido
            Então deve aparecer uma mensagem de "erro"

            Cenário: Cadastro com campos com asterisco em branco e e-mail válido
            Quando eu não digitar todos os "campos" com asterisco
            E um "e-mail" válido ou inválido // considerei essa opção pois o usuário irá preencher e após se o e-mail fosse inválido cairia no Cenário acima            Então deve aparecer uma mensagem de "campo em branco"
            Então deve aparecer uma mensagem de "campo em branco"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar os <campos> com asterisco
            E um <e-mail>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | campos             | e-mail     | mensagem          |
            | "todos preenchido" | "válido"   | "cadastro válido" |
            | "todos preenchido" | "inválido" | "erro"            |
            | "campo em branco"  | "válido"   | "campo em branco" |
