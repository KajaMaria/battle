class Player
  attr_reader :name , :hp
  def initialize(name)
    @name = name
    @hp = 60
  end
  def is_attacked(number)
    @hp -= number
  end

end
