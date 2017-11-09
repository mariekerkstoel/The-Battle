require './lib/HP.rb'
class Player
  ATTACK = 10
  POISON = 40
  attr_accessor :name, :hitpoints
  def initialize(name, point = Point.new)
    @hitpoints = point.points
    @name = name
  end

  def receive_damage
    @hitpoints -= ATTACK
  end

  def receive_more_damage
    @hitpoints -= POISON
  end
end
