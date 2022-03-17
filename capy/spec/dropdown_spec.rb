describe "Caixa de opções ", :dropdown do
  it "Item especifico simples " do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    select("Loki", from: "dropdown")
    sleep 3
  end

  it "Item especifico com o find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    # Buscando elemento através da classe
    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
    sleep 3
  end

  it "Selecionar todos os itens", :sample do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    # Buscar por elementos e selecionar um aleatóriamente
    drop.all("option").sample.select_option
    sleep 6
  end
end
