Favorite.destroy_all
User.destroy_all
Brand.destroy_all
Supplier.destroy_all

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

Favorite.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
)

Favorite.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.second.id
)

Favorite.create(
  brand_id: Brand.second.id,
  supplier_id: Supplier.second.id
)
