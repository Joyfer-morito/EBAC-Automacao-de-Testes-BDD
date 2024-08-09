            #language: pt

            Funcionalidade: Tela de loguin
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autentificação do portal EBAC

            Cenário: Autentificação válida
            Quando eu digitar o usuário "joyce@ebac.com.br"
            E a senha "senha@123"
            Então eu devo ser direcionado para a tela de meus pedidos

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joyce@ebac.com.br"
            E a senha "dgdhjdjkd@123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | Cenário                    | Usuário           | Senha          | Resultado Esperado                               |
            | Autenticação válida        | joyce@ebac.com.br | senha@123      | Direcionado para a tela de meus pedidos          |
            | Usuário com senha inválida | joyce@ebac.com.br | "dgdhjdjkd@123 | Mensagem de alerta: "Usuário ou senha inválidos" |
