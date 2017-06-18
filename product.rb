#file: product.rb
class Product
  attr_accessor :model, :price, :in_Stock

  def initialize(params = {})
    @model = params.fetch(:model, 'unknown')
    @price = params.fetch(:price, 0)
    @in_Stock = params.fetch(:in_Stock, 0)
  end

end
