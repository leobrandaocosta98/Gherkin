            #language: pt

            Funcionalidade: Tela do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produtos da EBAC SHOP

            Cenário: Seleção de cor,tamanho e quantidade selecionados
            Quando eu selecionar o "tamanho"
            E "quantidade", "cor"
            Então deve ir para opção de "adiconado no carrinho"

            Cenário: Seleção de cor e nao selecionado tamanho e nem quantidade
            Quando eu selecionar a "cor"
            E não selecionar "quantidade" e "tamanho"
            Então deve aparecer "operação inválida"

            Cenário: Não selecionado cor e nem quantidade apenas tamanho
            Quando eu selecionar o "tamanho"
            E não selecionar "quantidade" e "cor"
            Então deve aparecer "operação inválida"

            Cenário: Não selecionado cor e nem tamanho apenas quantidade
            Quando eu selecionar o "quantidade"
            E não selecionar "tamanho" e "cor"
            Então deve aparecer "operação inválida"

            Cenário: Não selecionado cor, tamanho e nem quantidade
            Quando eu não selecionar o "quantidade"
            E não selecionar "tamanho" e "cor"
            Então deve aparecer "operação inválida"

            Esquema do Cenário: Autenticar multiplas opções de escolha
            Quando eu clicar o <tamanho>
            E a <cor> e a <quantidade>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | tamanho           | cor               | quantidade        | mensagem                |
            | "selecionado"     | "selecionado"     | "selecionado"     | "adiconado no carrinho" |
            | "não selecionado" | "selecionado"     | "selecionado"     | "operação inválida"     |
            | "selecionado"     | "não selecionado" | "selecionado"     | "operação inválida"     |
            | "selecionado"     | "selecionado"     | "não selecionado" | "operação inválida"     |
            | "não selecionado" | "não selecionado" | "não selecionado" | "operação inválida"     |


            Funcionalidade: Tela do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produtos da EBAC SHOP

            Cenário: Quantidade até 10 produtos
            Quando eu selecionar a "quantidade"
            E for até "10" produtos
            Então deve ir para opção de "pagamento"

            Cenário: Quantidade maior que 10 produtos
            Quando eu selecionar a "quantidade"
            E for maior que "10" produtos
            Então deve aparecer "operação inválida"

            Cenário: Quantidade maior que 10 produtos
            Quando eu não selecionar a "quantidade"
            E não tiver nada de quantidade de produtos
            Então deve aparecer "operação inválida"

            Esquema do Cenário: Autenticar multiplas opções de quantidade de produto
            Quando eu clicar o <quantidade>
            E a quantidade de produto <numeros>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:

            | quantidade        | numeros             | mensagem                |
            | "selecionado"     | "até 10 produtos"   | "adiconado no carrinho" |
            | "selecionado"     | "maior 10 produtos" | "operação inválida"     |
            | "não selecionado" | "nennhum produtos"  | "operação inválida"     |

            Funcionalidade: Tela do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produtos da EBAC SHOP

            Cenário: Apertar o botão Limpar e tiver prooduto no carrinho
            Quando eu acionar o botão "Limpar"
            E tiver produto escolhido
            Então deve ser aparecer uma mensagem de "carrinho limpo"

            Cenário: Apertar o botão Limpar e não tiver produto no carrinho
            Quando eu acionar o botão "Limpar"
            E não tiver produto escolhido
            Então deve ser aparecer uma mensagem de "carrinho sem produto"

            Cenário: Não apertar o botão Limpar
            Quando eu não acionar o botão "Limpar"
            E tiver produto escolhido
            Então deve ser executado nenhuma função

            Esquema do Cenário: Autenticar multiplas opções de quantidade de produto
            Quando eu clicar o <Limpar>
            E tiver <produto>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:

            | Limpar         | produto             | mensagem               |
            | "acionado"     | "há produto"        | "carrinho limpo"       |
            | "acionado"     | "não há produto"    | "carrinho sem produto" |
            | "não acionado" | "há ou não produto" | "não exerce função"    |
