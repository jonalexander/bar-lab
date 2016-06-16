class Menu

  attr_accessor :list_of_booze

  def initialize
    bud = Drink.new("bud", 5, "beer")
    vodka = Drink.new("vodka", 10, "liquor") 
    jager_bomb = Drink.new("jager bomb", 15, "mixed")
    coors = Drink.new("coors", 5, "beer")
    earl_of_juniper = Drink.("earl of juniper", 10, "mixed")

    @list_of_booze = [bud, vodka, jager_bomb, coors, earl_of_juniper]
  end

  def menu
    @list_of_booze
  end

  def print_menu
    menu.each_with_index do |menu_item, i|
      puts "#{i + 1} - #{menu_item} - #{menu_item.price}"
    end
  end

end