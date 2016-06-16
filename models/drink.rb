
class Drink

  attr_accessor :name, :price, :type

  @@all = []

  def initialize(name, price, type)
    @name = name
    @price = price
    @type = type
    @@all << self
  end



end