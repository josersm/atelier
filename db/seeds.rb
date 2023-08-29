# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Supplier.destroy_all
Brand.destroy_all
User.destroy_all


Supplier.create(
  name: "Oporto manufacturing",
  address: "Oporto",
  description: "lalallala",
  country: "Portugal",
  email: "oporto.manu@gmail.com",
  phone_number: 123456789,
  price_rating: "€€€",
  sustainability_rating: "8.7",
  minimum_quantity: 150,
  favourite: false
)

5.times do
  Supplier.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    country: Faker::Address.country,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    price_rating: ["€", "€€", "€€€"].sample,
    sustainability_rating: rand(1..10),
    minimum_quantity: rand(1..1000),
    favourite: false
  )
end

Brand.create(
  company_name: "Amali",
  bic_number: "123456789",
  email: "amali@amali.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
)

5.times do
  Brand.create(
    company_name: Faker::Company.name,
    bic_number: Faker::Company.ein,
    email: Faker::Internet.email,
    contact_number: Faker::PhoneNumber.cell_phone,
    country: Faker::Address.country,
    address: Faker::Address.street_address,
  )
end

User.create(
  email: "amali@amali.com",
  password: "123456",
  user_type: "brand"
)

User.create(
  email: "oporto.manu@gmail.com",
  password: "123456",
  user_type: "supplier"
)
