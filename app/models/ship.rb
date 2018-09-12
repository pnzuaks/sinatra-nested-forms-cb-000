class Ship
  attr_reader :name, :topic

  SHIPS = []

  def initialize(args)
    @name = args[:name]
    @topic = args[:topic]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
end
