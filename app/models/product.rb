class Product < ApplicationRecord
    validates :title, length: { minimum: 1 }
    validates :stock, numericality: {greater_than_or_equal_to: 0}

    has_many :categories_products
    has_many :categories, through: :categories_products
end
