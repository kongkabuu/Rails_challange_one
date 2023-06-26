class CreateResturantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :resturant_pizzas do |t|
      t.integer :price
      t.integer :resturant_id
      t.integer :pizza_id

      t.timestamps
    end
  end
end
