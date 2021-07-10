class ProductStore < ApplicationRecord
    belong_to :product
    belong_to :store
end
