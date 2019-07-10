require 'player'
describe Player do
  subject(:kaja) {Player.new("kaja")}
  subject(:james) {Player.new("james")}
  it "has a #name method" do
    expect(kaja.name).to eq "kaja"
  end
  it "has an is_attacked method" do
    james.receive_damage
    expect(james.hp).to eq 50
  end
end
