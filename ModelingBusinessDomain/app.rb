require_relative 'product'
require_relative 'store'

product = Product.new
    product.name = 'Keyboard Montage White 73'
    product.price = 23000.00

    Store.new(product.name, product.price).buy
