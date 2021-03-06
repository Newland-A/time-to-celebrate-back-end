# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  WishItem.create(name: Faker::FunnyName.two_word_name, color: Faker::Color.color_name, height: Faker::Number.within(range: 5..30), weight: Faker::Number.within(range: 5..30), lights: Faker::Boolean.boolean, price: Faker::Number.decimal(l_digits: 2), description: Faker::Lorem.paragraph(sentence_count: 4))
end

10.times do 
  WishList.create(name: Faker::Name.unique.name)
end