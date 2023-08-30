Favorite.destroy_all
User.destroy_all
Brand.destroy_all
Supplier.destroy_all

user_1 = User.create(
  email: "amali@amali.com",
  password: "123456",
  user_type: "brand"
)

user_2 = User.create(
	email: "oporto.manu@gmail.com",
  password: "123456",
  user_type: "supplier"
)

user_3 = User.create(
	email: "coporto.manu@gmail.com",
  password: "1234567",
  user_type: "supplier"
)

user_4 = User.create(
	email: "camali@amali.com",
	password: "1234567",
	user_type: "brand"
)

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
	user: user_2
)

8.times do
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
		user: user_2
  )
end
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
	user: user_3
)


8.times do
  User.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    country: Faker::Address.country,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    price_rating: ["€", "€€", "€€€"].sample,
    sustainability_rating: rand(1..10),
    minimum_quantity: rand(1..1000),
		user: user_2
  )
end

Brand.create(
  company_name: "Amali",
  bic_number: "123456789",
  email: "amali@amali.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
		user: user_1
)

Brand.create(
  company_name: "Amali",
  bic_number: "123456789",
  email: "amali@amali.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
		user: user_4
)

Favorite.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
)
