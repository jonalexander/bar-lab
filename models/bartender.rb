class Bartender

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def orders
    Orders.all.select do |order|
    order.bartender == self
  end
  # => array of all orders by given bartender

  def total_revenue
    self.orders.inject(0) do |sum, order|
      sum += order.price
    end
  end
end   











# chaz = Bartender.new('chaz')

# order50 <@bartender =  'chaz' , @customer = 'bob', @drink = 'budweiser' @price = 5>

# chaz.orders
# # => [order50, order60, order70s]
# chaz.total_revenue

