class Marketplace
    def initialize(product)
      @product = product
    end
  
    def purchase
      puts "You purchased product #{@product.name} worth #{@product.price}"
    end
  end
  