module ProductsHelper
    def print_price(price)
        number_to_currency price 
    end

    def print_stock(stock)
        if stock > 0
         content_tag(:span, "In Stock", :class => 'in_stock')
         # "<span class='in_stock'>In Stock (##)</span>"   
        else
         content_tag(:span, "Out of Stock", :class => 'out_stock')
          #{}"<span class='out_stock'>Out of Stock</span>"
        end
    end
end
