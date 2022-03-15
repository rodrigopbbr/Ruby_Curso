describe "Forms " do
  it "login com sucesso" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "jarvis!"

    click_button "Login"

    #Verifica se contem o elemento na página e se é visível
    expect(find("#flash").visible?).to be true

    # Retorna o texto do elemento flash
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

    #expect(find("#flash").text).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "senha incorreta" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "teste"

    click_button "Login"

    expect(find("#flash").visible?).to be true

    expect(find("#flash").text).to include "Senha é invalida!"
  end

  it "usuário inválido" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "teste"
    fill_in "password", with: "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash").text).to include "O usuário informado não está cadastrado!"
  end
end
