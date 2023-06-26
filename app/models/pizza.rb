class Pizza < ApplicationRecord

  has_many :resturant_pizzas
has_many :resturants, through: :resturant_pizzas
end
