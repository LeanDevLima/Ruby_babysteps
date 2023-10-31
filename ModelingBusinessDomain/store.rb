class Store
    def initialize (product, price)
        @product = product
        @price = price
    end

    def buy
        puts "You purchased the product for #{@product} for the value #{@price}"
    end
end