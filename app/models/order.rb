class Order < ActiveRecord::Base
    has_many :order_items, dependent: :destroy 
    belongs_to :user
    def total
        price = 0
        order_items.each do |oi|
            price += oi.subtotal
        end
        price
    end
end
