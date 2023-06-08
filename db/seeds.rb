
require 'faker'
puts "🌱 Seeding spices..."

20.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
  )
end

20.times do
  recipe = Recipe.create(
    title: Faker::Food.dish,
    instructions: Faker::Food.description,
    user_id: rand(1..20),
  )
end

20.times do
  dietary = Dietary.create(
    preference: Faker::Food.ingredient,
    user_id: rand(1..20),
  )
end

20.times do
  RecipeDietary.create(
    recipe_id: rand(1..20),
    dietary_id: rand(1..20)
  )
end

puts "✅ Done seeding!"
