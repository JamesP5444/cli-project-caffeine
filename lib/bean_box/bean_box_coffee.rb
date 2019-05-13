class BeanBoxCoffee::BeanBox
  attr_accessor :title, :description, :price
  @@all = []

  def initialize(title, description, price)
    @title = title
    @description = description
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

end
