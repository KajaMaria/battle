

class Game
  attr_reader :player1, :player2, :current_player, :opponent_player
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent_player = player2
  end

  def attack(player2)
    player2.receive_damage
  end

  def switch_turns
    # parallel assignment
    @current_player, @opponent_player = @opponent_player, @current_player
  end

  def lost?
    @player2.hp == 0
  end

  # alternatively you can reassign using holding value
  # def switch_turns
  #   holding = @current_player
  #   @current_player = @opponent_player
  #   @opponent_player = holding
  # end

end
