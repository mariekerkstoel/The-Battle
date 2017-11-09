#Documentation comment: Game class
class Game
  attr_reader :player1, :player2
  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def attack
    @player2.receive_damage if @player2.hitpoints > 0
  end

  def poison
    @player2.receive_more_damage if @player2.hitpoints > 0
  end
end
