

            #language: pt

            Funcionalidade: Configuração de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto e quantidade
            Para depois inserir no carrinho

            Cenário: Selecionar produto sem preencher campos obrigatórios
            Dado que eu esteja na página de um produto
            Quando eu clicar no botão "Adicionar ao carrinho"
            Então o sistema deverá exibir uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios: tamanho, cor e quantidade."

            Cenário: Limitar quantidade de produtos por venda
            Dado que eu tenha adicionado 10 produtos ao carrinho
            Quando eu tentar adicionar um 11º produto
            Então o sistema deve exibir uma mensagem de alerta "Você atingiu o limite máximo de 10 itens por compra."

            Cenário: Limpar carrinho
            Dado que eu tenha adicionado produtos ao carrinho
            Quando eu clicar no botão "Limpar"
            Então o carrinho deve estar vazio

            Cenário: Validar campos obrigatórios na seleção de produto
            Dado que eu esteja na página de um produto
            Quando eu escolher <tamanho>, <cor> e <quantidade>
            Então o sistema deve inserir no carrinho

            Exemplos: Adicionar produto ao carrinho
            | Tamanho   | Cor      | Quantidade   |
            | P         | Azul     | 2            |
            | M         | Vermelho | 1            |
