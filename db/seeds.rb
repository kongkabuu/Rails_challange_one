# seeds.rb

# Clear existing data
ResturantPizza.destroy_all
Resturant.destroy_all
Pizza.destroy_all

# Create Pizzas
cheese_pizza = Pizza.create(name: 'Cheese', ingredients: 'Dough, Tomato Sauce, Cheese')
pepperoni_pizza = Pizza.create(name: 'Pepperoni', ingredients: 'Dough, Tomato Sauce, Cheese, Pepperoni')

# Create Resturants
sottocasa = Resturant.create(name: 'Sottocasa NYC', address: '298 Atlantic Ave, Brooklyn, NY 11201')
pizzarte = Resturant.create(name: 'PizzArte', address: '69 W 55th St, New York, NY 10019')

# Create ResturantPizzas
ResturantPizza.create(price: 10, Resturant: 1, pizza: 1)
ResturantPizza.create(price: 12, Resturant: 2, pizza: 2)
ResturantPizza.create(price: 8, Resturant: 2, pizza: 1)
ResturantPizza.create(price: 8, Resturant: 1, pizza: 2)

puts 'Seeding completed.'
