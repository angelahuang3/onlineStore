class Order < ApplicationRecord
    has_many(:lineitems, dependent: :destroy)

    PAYTYPES = ["Check", "Credit Card", "Venmo", "Paypal"]
    validates :name, :address, :email, presence: true
    validates :paytype, inclusion: PAYTYPES

    def add_items_from_cart(cart)
        cart.lineitems.each do |item|
          item.cart_id = nil
          item.order_id = self.id
        end
      end
end
