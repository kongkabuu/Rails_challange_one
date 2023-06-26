class Resturant < ApplicationRecord
  has_many :resturant_pizzas
  has_many :pizzas, through: :resturant_pizzas
end
