Dado('que acesso a página de cadastro') do
    visit "http://parodify.herokuapp.com"
    click_on "EXPERIMENTE AGORA"
  end
  
  Quando('submeto o meu cadastro com email, senha e confirmação da senha') do |table|
    
    user = table.rows_hash

    delore user [:email]

    find("input[name*=email]").set user[:email]
    find("input[placeholder='Sua senha secreta']").set user[:senha]
    find("input[placeholder='Confirme a senha']").set user[:confirmacao_senha]
    click_on "Cadastrar"
  end
  
  Então('devo ser redirecionado para a área logada') do
    find('.dashboard')
    expect(page).to have_css '.dashboard'
  end