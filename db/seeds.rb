# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# first_names = ['Nambinina', 'Iantsa', 'Bertrand', 'Emerih', 'Daniella', 'Thiago', 'Rajo', 'Tiavina', 'Koloina', 'Léo']

# last_names = ['Depay', 'Dembélé', 'Traoré', 'Aouar', 'Tousart', 'Mendes', 'Koné', 'Denayer', 'Andersen', 'Dubois']

# 10.times do |i|
#   first_name = first_names[i]
#   last_name = last_names[i]
#   description = "#{first_name} #{last_name} tu es beau ou belle"
#   email = "#{last_name.downcase}@yopmail.com"
#   User.create(first_name: first_name, last_name: last_name, description: description, email: email)
# end

12.times do |i|
  event = Event.new
  event.start_date = DateTime.now + rand(1..100)
  event.duration = rand(1..50)*5
  event.title = Faker::Hipster.sentence(word_count: 4)
  event.description = Faker::Hipster.paragraph(sentence_count: 2)
  event.price = rand(1..1000)
  event.location = Faker::Address.city
  event.admin = User.all.sample
  event.save
end
