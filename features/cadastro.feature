#language: pt

    Funcionalidade: Cadastro de Usuarios
        Sendo um visitante do site Parodify
        Quero fazer o meu cadastro
        Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email| testeqa2@gmail.com  |
            |senha| pwd123              |
            |confirmacao_senha| pwd123  |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |   email      |     <email>                     |
            |   senha      |    <senha>                      |
            |   confirmacao_senha|  <confirmacao_senha>      |
        Entao devo ver a mensagem: "<mensagem_saida>"

        Exemplos: 
        |    email           | senha  | confirmacao_senha       | mensagem_saida                      |
        |                    | pwd123 |  pwd123                 | Oops! Informe seu email.            |
        | testeqa3@gmail.com |        |                         | Oops! Informe sua senha.            | 
        | testeqa3@gmail.com | pwd123 |  pwd1234                | Oops! Senhas não são iguais.        |  
        |                    |        |                         | Oops! Informe seu email e sua senha.|                    