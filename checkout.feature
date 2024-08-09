#language: pt

Funcionalidade: Configuração de produto
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Cenário: Cadastrar usuário com todos os dados obrigatórios
Dado que eu preencho todos os campos obrigatórios
Quando eu clico em "Cadastrar"
Então o usuário deve ser cadastrado com sucesso

Cenário: Cadastrar usuário com e-mail inválido
Dado que eu preencho todos os campos obrigatórios
E que eu preencho o campo "E-mail" com um formato inválido
Quando eu clico em "Cadastrar"
Então o sistema deve exibir uma mensagem de alerta "O formato do e-mail é inválido."

Cenário: Cadastrar usuário com campos vazios
Dado que eu deixo alguns campos obrigatórios vazios
Quando eu clico em "Cadastrar"
Então o sistema deve exibir uma mensagem de alerta "Preencha todos os campos marcados com asterisco (*) para continuar"

