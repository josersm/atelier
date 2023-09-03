Project.destroy_all
Favorite.destroy_all
User.destroy_all
Brand.destroy_all
Supplier.destroy_all

# demo

# user 2

# user_demo_supplier_2 = User.create(
#  email: "lewagon@gmail.com",
#  password: "1234567",
#  user_type: "supplier",
# )

# Supplier.create(
#  name: "Madrid Manufacturing",
#  address: "P.º del Embarcadero, 8, 28011 Madrid",
#  description: Faker::Lorem.paragraph,
#  country: "Spain",
#  email: Faker::Internet.email,
#  phone_number: Faker::PhoneNumber.cell_phone,
#  price_rating: "€€€",
#  sustainability_rating: 8,
#  minimum_quantity: 153,
#  user: user_demo_supplier_2
# )

# # user 3

# user_demo_supplier_3 = User.create(
#  email: "lewagon@gmail.com",
#  password: "1234567",
#  user_type: "supplier",
# )

# Supplier.create(
#  name: "Madrid Manufacturing",
#  address: "P.º de la Florida, 11, 28008 Madrid",
#  description: Faker::Lorem.paragraph,
#  country: "Spain",
#  email: Faker::Internet.email,
#  phone_number: Faker::PhoneNumber.cell_phone,
#  price_rating: "€€€",
#  sustainability_rating: 9,
#  minimum_quantity: 80,
#  user: user_demo_supplier_3
# )

 # user 1
user_demo_supplier_1 = User.create(
  email: "lewagon@gmail.com",
  password: "1234567",
  user_type: "supplier",
)

Supplier.create(
  name: "Madrid Manufacturing",
  address: "C. del Dr. Esquerdo, 70, 28009 Madrid",
  description: Faker::Lorem.paragraph,
  country: "Spain",
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "€€",
  sustainability_rating: 9.0,
  minimum_quantity: 25,
  user: user_demo_supplier_1
)


 # user 4

 user_demo_supplier_4 = User.create(
  email: "lewagon@gmail.com",
  password: "1234567",
  user_type: "supplier",
)

Supplier.create(
  name: "Portugal Manufacturing",
  address: "Região Norte PT, R. de Brito Capelo 90, 4050-121 Porto, Portugal",
  description: Faker::Lorem.paragraph,
  country: "Portugal",
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "€€",
  sustainability_rating: 8,
  minimum_quantity: 35,
  user: user_demo_supplier_4
)

 # demo brand


user_demo_brand = User.create(
  email: "brand@gmail.com",
  password: "1234567",
  user_type: "brand",
)

Brand.create(
  company_name: "Amali",
  bic_number: "123456789",
  email: "brand@gmail.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
	user: user_demo_brand,
)


# 4 users for brands

user_1 = User.create(
  email: "tasi",
  password: "123456",
  user_type: "brand"
)

user_2 = User.create(
	email: "oporto.manu@gmail.com",
  password: "123456",
  user_type: "brand"
)

user_3 = User.create(
	email: "coporto.manu@gmail.com",
  password: "1234567",
  user_type: "brand"
)

user_4 = User.create(
	email: "camali@amali.com",
	password: "1234567",
	user_type: "brand"
)

# 8 users for suppliers

user_5 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

user_6 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

user_7 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

user_8 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

user_9 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

user_10 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

user_11 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

user_12 = User.create(
  email: Faker::Internet.email,
  password: "1234567",
  user_type: "supplier",
)

# 4 brands

Brand.create(
  company_name: "Amali",
  bic_number: "123454789",
  email: "amali1@amali.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
	user: user_1
)

Brand.create(
  company_name: "Amali",
  bic_number: "123456789",
  email: "amali2@amali.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
	user: user_2,
)

Brand.create(
  company_name: "Amali",
  bic_number: "123456789",
  email: "amali3@amali.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
	user: user_3
)

Brand.create(
  company_name: "Amali",
  bic_number: "123456789",
  email: "amali4@amali.com",
  contact_number: 123456789,
  country: "Spain",
  address: "Modesto Lafuente",
	user: user_4,
)

# 8 suppliers

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph,
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..10),
  minimum_quantity: rand(1..250),
  user: user_5
)

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
  user: user_6
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph,
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..10),
  minimum_quantity: rand(1..250),
  user: user_7
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph,
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..10),
  minimum_quantity: rand(1..250),
  user: user_8
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph,
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..10),
  minimum_quantity: rand(1..250),
  user: user_9
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph,
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..10),
  minimum_quantity: rand(1..250),
  user: user_10
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph,
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..10),
  minimum_quantity: rand(1..250),
  user: user_11
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph,
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..10),
  minimum_quantity: rand(1..250),
  user: user_12
)

# favorite

# Favorite.create(
#   brand_id: Brand.first.id,
#   supplier_id: Supplier.first.id,
# )

# Favorite.create(
#   brand_id: Brand.first.id,
#   supplier_id: Supplier.second.id,
# )

# Favorite.create(
#   brand_id: Brand.second.id,
#   supplier_id: Supplier.second.id,
# )

materials = ["cotton", "polyester", "cashmere", "linen", "Silk", "Wool", "Leather", "Denim", "Velvet", "Nylon", "Spandex", "Rayon", "Satin", "Chiffon", "Tulle", "Fleece", "Tweed", "Corduroy", "Lace", "Suede", "Jacquard", "Chambray", "Organza"]

materials.each do |material_name|
Material.create!(name: material_name)
end


Project.create(
  brand_id: Brand.first.id,
	title: "my 1 project",
	delivery_mode: "whatever mode",
	description: "first description",
	status: "request",
)

Project.create(
  brand_id: Brand.first.id,
	title: "my 2 project",
	delivery_mode: "whatever mode",
	description: "first description",
	status: "request",
)

Project.create(
  brand_id: Brand.first.id,
	title: "my 3 project",
	delivery_mode: "whatever mode",
	description: "first description",
	status: "request",
)

Project.create(
  brand_id: Brand.first.id,
	title: "my 5 project",
	delivery_mode: "whatever mode",
	description: "first description",
	status: "request",
)
