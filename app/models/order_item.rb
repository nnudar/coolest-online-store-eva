class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :product

    validates_numericality_of :order_id, :product_id 
    
    def subtotal

    end
end
