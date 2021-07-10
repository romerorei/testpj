class Order < ApplicationRecord
    belongs_to :store
    has_many :order_products
    has_many :products, through: :order_products
    accepts_nested_attributes_for :order_products

    after_save :save_total
    def save_total
        
        suma = self.products.sum(:price)
        # self.update_column(total: suma)
        self[:total] = suma

    end
  
end
