class Product < ApplicationRecord
    validates :title, length: { minimum: 1 }
    validates :stock, numericality: {greater_than_or_equal_to: 0}
end
