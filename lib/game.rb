#Documentation comment: Game class
class Game
  SWITCH = 1
  attr_reader :player1, :player2, :count
  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @count = 0
  end

  def attack_player2
     @player2.receive_damage if @player2.hitpoints > 0
  end

  def switch_turn
    @count += SWITCH
  end

  def attack_player1
     @player1.receive_damage if @player1.hitpoints > 0
  end

  def poison_player2
    @player2.receive_more_damage if @player2.hitpoints > 0
  end

  def poison_player1
    @player1.receive_more_damage if @player1.hitpoints > 0
  end
end
