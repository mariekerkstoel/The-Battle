require './lib/HP.rb'
class Player
  ATTACK = 10
attr_accessor :name, :hitpoints
  def initialize(name, point = Point.new)
    @hitpoints = point.points
    @name = name
  end

  # def player_points
  #   @hitpoints
  # end

  def attack(player)
   player.hitpoints -= ATTACK
  end
end
