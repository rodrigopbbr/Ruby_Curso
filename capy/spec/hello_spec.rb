# Bloco da suíte de teste e do caso de teste
describe "Meu primeiro script" do
  it "visitar a página" do
    visit "https://training-wheels-protocol.herokuapp.com/"
    # Verifica se o título da página é igual
    expect(page.title).to eql "Training Wheels Protocol"
    sleep 5 #Temporário
  end
end
