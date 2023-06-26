class ResturantPizza < ApplicationRecord

  validates :price , inclusion: {in:1..30}
  belongs_to :resturant
belongs_to :pizza

end
