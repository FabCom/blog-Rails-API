# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.destroy_all
User.destroy_all

User.create(email:'test@test.com', password:"azerty")

10.times do
 user = User.create(email:Faker::Internet.email, password:Faker::Lorem.word)
 puts user
end

40.times do 
  article = Article.create(title: Faker::Lorem.sentence, content: Faker::Lorem.sentences(number: 4).join(' '), user: User.all.sample(1)[0])
  puts article
end