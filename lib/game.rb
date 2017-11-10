#Documentation comment: Game class
class Game
  SWITCH = 1
  attr_reader :player1, :player2, :count
  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @count = 0
  end

  def self.access_game
    @stored_game
  end

  def self.game(player1, player2)
    @stored_game = Game.new(player1, player2)

  end
  def attack
    if @count % 2 == 0
      @player2.receive_damage if @player2.hitpoints > 0
    elsif @count % 2 != 0
      @player1.receive_damage if @player1.hitpoints > 0
    end
  end

  def switch_turn
    @count += SWITCH
  end

  def attack_and_switch
    attack
    switch_turn
  end

  def poison
    if @count % 2 == 0
      @player2.receive_more_damage if @player2.hitpoints > 0
    elsif @count % 2 != 0
      @player1.receive_more_damage if @player1.hitpoints > 0
    end
  end

  def poison_and_switch
    poison
    switch_turn
  end
end
