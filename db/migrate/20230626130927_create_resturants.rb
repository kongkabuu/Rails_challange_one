class CreateResturants < ActiveRecord::Migration[7.0]
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
