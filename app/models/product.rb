class Product < ActiveRecord::Base
    validates_numericality_of :price, :order_id, :product_id
    has_many :order_items
    def price=(input)
        input.delete!("$")
        super
    end
end
