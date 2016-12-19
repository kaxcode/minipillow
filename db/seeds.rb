# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kenia = User.create(name: "Bobbie", uid: 1, nickname: "Kenia", access_token: 1)
jasmine = User.create(name: "Jamie", uid: 2, nickname: "Jasmine", access_token: 2)

house = House.create!(
  [
    {
      cover_image: File.open(Rails.root.join("db/seeds/four.jpg")), address: "1st Ave", number_of_beds: 3, number_of_baths: 2, year_built: "2012", sq_footage: "1000", price: "1000000", description: "Apartment", user: kenia
    },
    {
      cover_image: File.open(Rails.root.join("db/seeds/two.jpg")), address: "2nd Ave", number_of_beds: 8, number_of_baths: 7, year_built: "2012", sq_footage: "1000000", price: "20000000", description: "Mansion", user: jasmine
    }
  ]
)
