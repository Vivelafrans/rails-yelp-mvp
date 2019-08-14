# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Clearing database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Hotel de Goudfazant',
    address: 'Aambeeldstraat 34',
    category: 'french',
    phone_number: '+31633223801'
  },
  {
    name: 'Scheepskameel',
    address: 'Marineterrein 15',
    category: 'italian',
    phone_number: '+31633223801'
  },
  {
    name: 'Cafe Modern',
    address: 'Van der Pekstraat 54',
    category: 'french',
    phone_number: '+31633223801'
  },
  {
    name: 'Rijssel',
    address: 'Wibautstraat 45',
    category: 'belgian',
    phone_number: '+31633223801'
  },
  {
    name: 'Fou Fow',
    address: 'Ferdinand Bolstraat 24',
    category: 'japanese',
    phone_number: '+31633223801'
  }
]
Restaurant.create!(restaurants_attributes)
puts "Finished! Populated the database with #{Restaurant.count} restaurants."
