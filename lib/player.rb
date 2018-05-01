class Player
  STARTING_HEALTH = 50
  DEFAULT_DAMAGE = 10

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = STARTING_HEALTH
  end

  def attack
    @health -= DEFAULT_DAMAGE
  end
end
