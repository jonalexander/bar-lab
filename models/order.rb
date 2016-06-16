class Order

  attr_accessor :bartender, :customer, :drink, :price

  @@all = []

  def initialize(bartender, customer, drink)
    @bartender = bartender
    @customer = customer
    @drink = drink
    @price = drink.price
    @@all << self
  end

  def self.all
    @@all
  end

end