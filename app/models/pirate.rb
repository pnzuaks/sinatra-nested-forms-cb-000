class Pirate
  attr_accessor :name, :weight, :height
  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:grade]
    STUDENTS << self
  end

  def self.all
    STUDENTS
  end

end
