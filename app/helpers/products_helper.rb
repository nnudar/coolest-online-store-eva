module ProductsHelper
    def print_price(price)
        number_to_currency price 
    end

    def print_stock(stock, requested = 1)
      if stock == 0
         content_tag(:span, "Out of Stock", :class => 'out_stock')
      elsif stock >= requested
         content_tag(:span, "In Stock (#{stock})", :class => 'in_stock')
      else stock < requested
        content_tag(:span, "Insufficient stock (#{stock})", class: "low_stock")
      end


         # "<span class='in_stock'>In Stock (##)</span>"   
        
          #{}"<span class='out_stock'>Out of Stock</span>"

    end
end
