require_relative 'item.rb'

class Digital_item  < Item
  attr_accessor :quantity

  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def sell(amount)
    @quantity = 1
  end

  def stock(amount)
    @quantity = 1
  end
end
