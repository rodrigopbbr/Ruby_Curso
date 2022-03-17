describe "Caixas de seleção", :checkbox do
  #Sempre executar primeiro a página
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  it "marcando uma opção" do
    check("thor")
  end

  it "desmarcando uma opção" do
    uncheck("antman")
  end
  #marcando o elemento com o método find set true
  it "marcando com find set true" do
    find("input[value=cap]").set(true)
  end
  #desmarcando elemento com o método find set false
  it "desmarcando com find set false" do
    find("input[value=guardians]").set(false)
  end

  after(:each) do
    sleep 3
  end
end
