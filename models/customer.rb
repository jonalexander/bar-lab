
class Customer

  attr_accessor :name

  @@all = []

  def intialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end