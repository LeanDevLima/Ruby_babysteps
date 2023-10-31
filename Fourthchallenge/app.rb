require_relative 'product'
require_relative 'marketplace'

product = Product.new("Rice", 12.99)
marketplace = Marketplace.new(product)
marketplace.purchase
