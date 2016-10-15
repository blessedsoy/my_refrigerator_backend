# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'Vegetables')
Category.create(name: 'Fruits')
Category.create(name: 'Meat')
Category.create(name: 'Dairy')
Category.create(name: 'Fish')
Category.create(name: 'Cooked Foods')
Category.create(name: 'Fermented Foods')
Category.create(name: 'Drinks')
Category.create(name: 'Sauce or Salad Dressings')
Category.create(name: 'Etc.')

Ingredient.create(name: 'Carrot', expiration_date: '2016-10-12', in_freezer: false, category_id:1)