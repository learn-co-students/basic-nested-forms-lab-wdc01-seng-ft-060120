# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
    Ingredient.create(name: Faker::Food.unique.ingredient, quantity: Faker::Food.measurement)
end

5.times do
    r = Recipe.create(title: Faker::Food.unique.dish )
    r.ingredients << Ingredient.all.sample(4)
end
