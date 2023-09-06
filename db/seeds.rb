SupplierMaterial.destroy_all
Favorite.destroy_all
User.destroy_all
Supplier.destroy_all
Material.destroy_all
Product.destroy_all
Project.destroy_all
Brand.destroy_all

# 4 users for brands

user_1 = User.create(

  email: "amali1@amali.com",
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
  password: "123456",
  user_type: "brand"
)

user_4 = User.create(
	email: "camali@amali.com",
	password: "123456",
	user_type: "brand"
)

puts "users for brands have been created"

# 8 users for suppliers

user_5 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

user_6 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

user_7 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

user_8 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

user_9 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

user_10 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

user_11 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

user_12 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "users for suppliers have been created"

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

puts "Brands have been created"


# 8 suppliers

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_5
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_6
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_7
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_8
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_9
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_10
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_11
)

Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(1..1000),
  user: user_12
)

puts "Suppliers have been created"

# ------------------------------ SEEDS FOR FINAL DEMO ---------------------------------------------------------

# The brand we will use for the demo


# For the demo we will have suppliers from 8 different countries

  # A. - SPAIN SUPPLIERS ----------

#------------------------TEMPLATE: ERRASE WHEN DONE------------------------------
# user_supplier_spain_1
user_supplier_country_1 = ""
user_supplier_name_1 = ""
user_supplier_address_1 = ""
user_supplier_description_1 = ""
user_supplier_price_1 = "€€€"
user_supplier_sus_1 = rand(3..5)

user_supplier_1 = User.create(
  email: "#{user_supplier_name_1}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_1}",
  address: "#{user_supplier_address_1}",
  description: "#{user_supplier_description_1}",
  country: "#{user_supplier_country_1}",
  email: "#{user_supplier_name_1}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_1}",
  sustainability_rating: "#{user_supplier_sus_1}",
  minimum_quantity: rand(1..300),
  user: user_supplier_1
)

# ---------------------------------------------------------------------------

# user_supplier_spain_1
user_supplier_country_1 = "Spain"
user_supplier_name_1 = "ModaGalicia"
user_supplier_address_1 = "McDonald's, Polígono Industrial de La Grela, Rúa Severo Ochoa, 6, 15008 A Coruña"
user_supplier_description_1 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_1 = "€€€"
user_supplier_sus_1 = rand(3..5)

user_supplier_1 = User.create(
  email: "#{user_supplier_name_1}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_1}",
  address: "#{user_supplier_address_1}",
  description: "#{user_supplier_description_1}",
  country: "#{user_supplier_country_1}",
  email: "#{user_supplier_name_1}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_1}",
  sustainability_rating: "#{user_supplier_sus_1}",
  minimum_quantity: rand(1..300),
  user: user_supplier_1
)

#-------------------------------------------------------------

# user_supplier_spain_2
user_supplier_country_2 = "Spain"
user_supplier_name_2 = "TelasBarcelona"
user_supplier_address_2 = "Av. Diagonal, 661, 08028 Barcelona"
user_supplier_description_2 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_2 = "€€€"
user_supplier_sus_2 = rand(3..5)

user_supplier_2 = User.create(
  email: "#{user_supplier_name_2}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_2}",
  address: "#{user_supplier_address_2}",
  description: "#{user_supplier_description_2}",
  country: "#{user_supplier_country_2}",
  email: "#{user_supplier_name_2}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_2}",
  sustainability_rating: "#{user_supplier_sus_2}",
  minimum_quantity: rand(1..300),
  user: user_supplier_2
)


#------------------------------------------------------
# user_supplier_spain_3
user_supplier_country_3 = "Spain"
user_supplier_name_3 = "TextilIbérica"
user_supplier_address_3 = "Canal, 23, 15650 Cambre, A Coruña"
user_supplier_description_3 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_3 = "€€€"
user_supplier_sus_3 = rand(3..5)

user_supplier_3 = User.create(
  email: "#{user_supplier_name_3}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_3}",
  address: "#{user_supplier_address_3}",
  description: "#{user_supplier_description_3}",
  country: "#{user_supplier_country_3}",
  email: "#{user_supplier_name_3}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_3}",
  sustainability_rating: "#{user_supplier_sus_3}",
  minimum_quantity: rand(1..300),
  user: user_supplier_3
)

# ---------------------------------------------------------------------------

# user_supplier_spain_4
user_supplier_country_4 = "Spain"
user_supplier_name_4 = ""
user_supplier_address_4 = ""
user_supplier_description_4 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_4 = "€€€"
user_supplier_sus_4 = rand(3..5)

user_supplier_4 = User.create(
  email: "#{user_supplier_name_4}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_4}",
  address: "#{user_supplier_address_4}",
  description: "#{user_supplier_description_4}",
  country: "#{user_supplier_country_4}",
  email: "#{user_supplier_name_4}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_4}",
  sustainability_rating: "#{user_supplier_sus_4}",
  minimum_quantity: rand(1..300),
  user: user_supplier_4
)

# ---------------------------------------------------------------------------

# user_supplier_spain_5
user_supplier_country_5 = "Spain"
user_supplier_name_5 = ""
user_supplier_address_5 = ""
user_supplier_description_5 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_5 = "€€€"
user_supplier_sus_5 = rand(3..5)

user_supplier_5 = User.create(
  email: "#{user_supplier_name_5}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_5}",
  address: "#{user_supplier_address_5}",
  description: "#{user_supplier_description_5}",
  country: "#{user_supplier_country_5}",
  email: "#{user_supplier_name_5}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_5}",
  sustainability_rating: "#{user_supplier_sus_5}",
  minimum_quantity: rand(1..300),
  user: user_supplier_5
)

# ---------------------------------------------------------------------------

# user_supplier_spain_6
user_supplier_country_6 = "Spain"
user_supplier_name_6 = ""
user_supplier_address_6 = ""
user_supplier_description_6 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_6 = "€€€"
user_supplier_sus_6 = rand(3..5)

user_supplier_6 = User.create(
  email: "#{user_supplier_name_6}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_6}",
  address: "#{user_supplier_address_6}",
  description: "#{user_supplier_description_6}",
  country: "#{user_supplier_country_6}",
  email: "#{user_supplier_name_6}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_6}",
  sustainability_rating: "#{user_supplier_sus_6}",
  minimum_quantity: rand(1..300),
  user: user_supplier_6
)

# ---------------------------------------------------------------------------
# user_supplier_spain_7
user_supplier_country_7 = "Spain"
user_supplier_name_7 = ""
user_supplier_address_7 = ""
user_supplier_description_7 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_7 = "€€€"
user_supplier_sus_7 = rand(3..5)

user_supplier_7 = User.create(
  email: "#{user_supplier_name_7}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_7}",
  address: "#{user_supplier_address_7}",
  description: "#{user_supplier_description_7}",
  country: "#{user_supplier_country_7}",
  email: "#{user_supplier_name_7}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_7}",
  sustainability_rating: "#{user_supplier_sus_7}",
  minimum_quantity: rand(1..300),
  user: user_supplier_7
)

# ---------------------------------------------------------------------------


# user_supplier_spain_8
user_supplier_country_8 = ""
user_supplier_name_8 = ""
user_supplier_address_8 = ""
user_supplier_description_8 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_8 = "€€€"
user_supplier_sus_8 = rand(3..5)

user_supplier_8 = User.create(
  email: "#{user_supplier_name_8}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_8}",
  address: "#{user_supplier_address_8}",
  description: "#{user_supplier_description_8}",
  country: "#{user_supplier_country_8}",
  email: "#{user_supplier_name_8}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_8}",
  sustainability_rating: "#{user_supplier_sus_8}",
  minimum_quantity: rand(1..300),
  user: user_supplier_8
)

# ---------------------------------------------------------------------------
# user_supplier_spain_9
user_supplier_country_9 = ""
user_supplier_name_9 = ""
user_supplier_address_9 = ""
user_supplier_description_9 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_9 = "€€€"
user_supplier_sus_9 = rand(3..5)

user_supplier_9 = User.create(
  email: "#{user_supplier_name_9}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_9}",
  address: "#{user_supplier_address_9}",
  description: "#{user_supplier_description_9}",
  country: "#{user_supplier_country_9}",
  email: "#{user_supplier_name_9}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_9}",
  sustainability_rating: "#{user_supplier_sus_9}",
  minimum_quantity: rand(1..300),
  user: user_supplier_9
)

# ---------------------------------------------------------------------------

# user_supplier_spain_10
user_supplier_country_10 = ""
user_supplier_name_10 = ""
user_supplier_address_10 = ""
user_supplier_description_10 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_10 = "€€€"
user_supplier_sus_10 = rand(3..5)

user_supplier_10 = User.create(
  email: "#{user_supplier_name_10}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_10}",
  address: "#{user_supplier_address_10}",
  description: "#{user_supplier_description_10}",
  country: "#{user_supplier_country_10}",
  email: "#{user_supplier_name_10}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_10}",
  sustainability_rating: "#{user_supplier_sus_10}",
  minimum_quantity: rand(1..300),
  user: user_supplier_10
)

# ---------------------------------------------------------------------------

# user_supplier_spain_11
user_supplier_country_11 = ""
user_supplier_name_11 = ""
user_supplier_address_11 = ""
user_supplier_description_11 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_11 = "€€€"
user_supplier_sus_11 = rand(3..5)

user_supplier_11 = User.create(
  email: "#{user_supplier_name_11}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_11}",
  address: "#{user_supplier_address_11}",
  description: "#{user_supplier_description_11}",
  country: "#{user_supplier_country_11}",
  email: "#{user_supplier_name_11}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_11}",
  sustainability_rating: "#{user_supplier_sus_11}",
  minimum_quantity: rand(1..300),
  user: user_supplier_11
)

# ---------------------------------------------------------------------------

# user_supplier_spain_12
user_supplier_country_12 = ""
user_supplier_name_12 = ""
user_supplier_address_12 = ""
user_supplier_description_12 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_12 = "€€€"
user_supplier_sus_12 = rand(3..5)

user_supplier_12 = User.create(
  email: "#{user_supplier_name_12}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_12}",
  address: "#{user_supplier_address_12}",
  description: "#{user_supplier_description_12}",
  country: "#{user_supplier_country_12}",
  email: "#{user_supplier_name_12}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_12}",
  sustainability_rating: "#{user_supplier_sus_12}",
  minimum_quantity: rand(1..300),
  user: user_supplier_12
)

# ---------------------------------------------------------------------------


# user_supplier_spain_13
user_supplier_country_13 = ""
user_supplier_name_13 = ""
user_supplier_address_13 = ""
user_supplier_description_13 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_13 = "€€€"
user_supplier_sus_13 = rand(3..5)

user_supplier_13 = User.create(
  email: "#{user_supplier_name_13}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_13}",
  address: "#{user_supplier_address_13}",
  description: "#{user_supplier_description_13}",
  country: "#{user_supplier_country_13}",
  email: "#{user_supplier_name_13}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_13}",
  sustainability_rating: "#{user_supplier_sus_13}",
  minimum_quantity: rand(13..300),
  user: user_supplier_13
)

# ---------------------------------------------------------------------------

# user_supplier_spain_14
user_supplier_country_14 = ""
user_supplier_name_14 = ""
user_supplier_address_14 = ""
user_supplier_description_14 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_14 = "€€€"
user_supplier_sus_14 = rand(3..5)

user_supplier_14 = User.create(
  email: "#{user_supplier_name_14}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_14}",
  address: "#{user_supplier_address_14}",
  description: "#{user_supplier_description_14}",
  country: "#{user_supplier_country_14}",
  email: "#{user_supplier_name_14}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_14}",
  sustainability_rating: "#{user_supplier_sus_14}",
  minimum_quantity: rand(14..300),
  user: user_supplier_14
)

# ---------------------------------------------------------------------------

# user_supplier_spain_15
user_supplier_country_15 = ""
user_supplier_name_15 = ""
user_supplier_address_15 = ""
user_supplier_description_15 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_15 = "€€€"
user_supplier_sus_15 = rand(3..5)

user_supplier_15 = User.create(
  email: "#{user_supplier_name_15}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_15}",
  address: "#{user_supplier_address_15}",
  description: "#{user_supplier_description_15}",
  country: "#{user_supplier_country_15}",
  email: "#{user_supplier_name_15}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_15}",
  sustainability_rating: "#{user_supplier_sus_15}",
  minimum_quantity: rand(15..300),
  user: user_supplier_15
)

# ---------------------------------------------------------------------------

# user_supplier_spain_16
user_supplier_country_16 = ""
user_supplier_name_16 = ""
user_supplier_address_16 = ""
user_supplier_description_16 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_16 = "€€€"
user_supplier_sus_16 = rand(3..5)

user_supplier_16 = User.create(
  email: "#{user_supplier_name_16}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_16}",
  address: "#{user_supplier_address_16}",
  description: "#{user_supplier_description_16}",
  country: "#{user_supplier_country_16}",
  email: "#{user_supplier_name_16}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_16}",
  sustainability_rating: "#{user_supplier_sus_16}",
  minimum_quantity: rand(16..300),
  user: user_supplier_16
)

# ---------------------------------------------------------------------------

# B. - PORTUGAL SUPPLIERS ----------

# user_supplier_spain_17
user_supplier_country_17 = ""
user_supplier_name_17 = ""
user_supplier_address_17 = ""
user_supplier_description_17 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_17 = "€€€"
user_supplier_sus_17 = rand(3..5)

user_supplier_17 = User.create(
  email: "#{user_supplier_name_17}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_17}",
  address: "#{user_supplier_address_17}",
  description: "#{user_supplier_description_17}",
  country: "#{user_supplier_country_17}",
  email: "#{user_supplier_name_17}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_17}",
  sustainability_rating: "#{user_supplier_sus_17}",
  minimum_quantity: rand(17..300),
  user: user_supplier_17
)

# ---------------------------------------------------------------------------

# user_supplier_spain_18
user_supplier_country_18 = ""
user_supplier_name_18 = ""
user_supplier_address_18 = ""
user_supplier_description_18 = Faker::Lorem.paragraph(sentence_count: 10)
user_supplier_price_18 = "€€€"
user_supplier_sus_18 = rand(3..5)

user_supplier_18 = User.create(
  email: "#{user_supplier_name_18}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_18}",
  address: "#{user_supplier_address_18}",
  description: "#{user_supplier_description_18}",
  country: "#{user_supplier_country_18}",
  email: "#{user_supplier_name_18}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_18}",
  sustainability_rating: "#{user_supplier_sus_18}",
  minimum_quantity: rand(18..300),
  user: user_supplier_18
)

# ---------------------------------------------------------------------------








# favorite

Favorite.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
)

Favorite.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.second.id,
)

Favorite.create(
  brand_id: Brand.second.id,
  supplier_id: Supplier.second.id,
)

puts "Favorites have been created"

materials = ["cotton", "polyester", "cashmere", "linen", "Silk", "Wool", "Leather", "Denim", "Velvet", "Nylon", "Spandex", "Rayon", "Satin", "Chiffon", "Tulle", "Fleece", "Tweed", "Corduroy", "Lace", "Suede", "Jacquard", "Chambray", "Organza"]

materials.each do |material_name|
  Material.create!(name: material_name)
end

puts "Materials have been created"



5.times {
	SupplierMaterial.create(
		material_id: rand(1..20),
		supplier_id: Supplier.first.id
	)
}

5.times {
SupplierMaterial.create(
	material_id: rand(1..20),
	supplier_id: Supplier.second.id
)
}

5.times {
  SupplierMaterial.create(
    material_id: rand(1..20),
    supplier_id: Supplier.third.id
  )
}

5.times {
  SupplierMaterial.create(
    material_id: rand(1..20),
    supplier_id: Supplier.fourth.id
  )
}

5.times {
  SupplierMaterial.create(
    material_id: rand(1..20),
    supplier_id: Supplier.fifth.id
  )
}



# seeds for Graphs

# project 1

my_project_1 = Project.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
	title: "my 1 project",
	delivery_mode: "Standard Delivery",
	description: "first description",
	status: "pending",
)

Product.create(
  project_id: my_project_1.id,
	description: "my collection",
	name: "my collection",
	quantity_xs: rand(1..10),
  quantity_s: rand(1..10),
  quantity_m: rand(1..10),
  quantity_l: rand(1..10),
  quantity_xl: rand(1..10),
)

# project 2

my_project_2 = Project.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
	title: "my 2 project",
	delivery_mode: "Standard Delivery",
	description: "first description",
	status: "pending",
)

Product.create(
  project_id: my_project_2.id,
	description: "my collection",
	name: "my collection",
	quantity_xs: rand(1..10),
  quantity_s: rand(1..10),
  quantity_m: rand(1..10),
  quantity_l: rand(1..10),
  quantity_xl: rand(1..10)
)

# project 3
my_project_3 = Project.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
	title: "my 3 project",
	delivery_mode: "Standard Delivery",
	description: "first description",
	status: "pending",
)

Product.create(
  project_id: my_project_3.id,
	description: "my collection",
	name: "my collection",
	quantity_xs: rand(1..10),
  quantity_s: rand(1..10),
  quantity_m: rand(1..10),
  quantity_l: rand(1..10),
  quantity_xl: rand(1..10),
  created_at: "Sun, 30 Aug 2023 17:04:50.346529000 UTC +00:00"
)

# project 4
my_project_4 = Project.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
	title: "my 4 project",
	delivery_mode: "Standard Delivery",
	description: "first description",
	status: "pending",
)

Product.create(
  project_id: my_project_4.id,
	description: "my collection",
	name: "my collection",
	quantity_xs: rand(1..10),
  quantity_s: rand(1..10),
  quantity_m: rand(1..10),
  quantity_l: rand(1..10),
  quantity_xl: rand(1..10)
)

# project 5
my_project_5 = Project.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
	title: "my 5 project",
	delivery_mode: "Standard Delivery",
	description: "first description",
	status: "pending",
)

Product.create(
  project_id: my_project_5.id,
	description: "my collection",
	name: "my collection",
	quantity_xs: rand(1..10),
  quantity_s: rand(1..10),
  quantity_m: rand(1..10),
  quantity_l: rand(1..10),
  quantity_xl: rand(1..10)
)

puts "Projects have been created"
