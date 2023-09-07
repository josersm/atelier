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
user_supplier_name_4 = "Tejidos Innovadores S.L."
user_supplier_address_4 = "C. del Gral. Aranaz, 65, 28027 Madrid"
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
user_supplier_name_5 = "Confecciones Catalanas"
user_supplier_address_5 = " C. d'Enric Granados, 66, 08008 Barcelona"
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
user_supplier_name_6 = "TelaVanguardia Sevilla"
user_supplier_address_6 = "C. de Castelar, 24, 41001 Sevilla"
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
user_supplier_name_7 = "Tejidos Creativos S.A."
user_supplier_address_7 = "C. Francisco Zarandona, 6, 47003 Valladolid"
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
user_supplier_country_8 = "Spain"
user_supplier_name_8 = "TextilCosta del Sol"
user_supplier_address_8 = "Avenida Cervantes s/n Urb. Costa Bella, 29604 Marbella, Málaga"
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
user_supplier_country_9 = "Spain"
user_supplier_name_9 = "ModaTrendy Canarias"
user_supplier_address_9 = "Urbanizacion San Eugenio, 26, 38660 Costa Adeje, Santa Cruz de Tenerife"
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
user_supplier_country_10 = "Spain"
user_supplier_name_10 = "TextilNaturaleza Asturias"
user_supplier_address_10 = "C. Marqués de Gastañaga, 13, 33009 Oviedo, Asturias"
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
user_supplier_country_11 = "Spain"
user_supplier_name_11 = "TextilNaturaleza Asturias"
user_supplier_address_11 = "Pl. Trascorrales, 6, 33009 Oviedo, Asturias"
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
user_supplier_country_12 = "Spain"
user_supplier_name_12 = "ModaEstampados Galicia"
user_supplier_address_12 = "Rúa das Casas Reais, 21, 15704 Santiago de Compostela, A Coruña"
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
user_supplier_country_13 = "Spain"
user_supplier_name_13 = "Tejidos del Viento Murcia"
user_supplier_address_13 = "C. Trapería, 22, 30001 Murcia"
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
user_supplier_country_14 = "Spain"
user_supplier_name_14 = "ModaArteTextil Zaragoz"
user_supplier_address_14 = "C. de los Mártires, 12, 50003 Zaragoza"
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
user_supplier_country_15 = "Spain"
user_supplier_name_15 = "TelaBordados Asturias"
user_supplier_address_15 = "Av. de Europa, 14, 33540 Arriondas, Asturias"
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
user_supplier_country_16 = "Spain"
user_supplier_name_16 = "TextilSostenible Canarias"
user_supplier_address_16 = "C. Hespérides, 57, 38630 Costa del Silencio, Santa Cruz de Tenerife"
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
user_supplier_country_17 = "Portugal"
user_supplier_name_17 = "Têxteis Portugueses S.A"
user_supplier_address_17 = "Av. Nossa Sra. Natividade 250, 4425-671 Pedrouços, Portugal"
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
user_supplier_country_18 = "Portugal"
user_supplier_name_18 = "ModaLusitana"
user_supplier_address_18 = "Rua do Rosário 241, 4050-524 Porto, Portugal"
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

# user_supplier_spain_19
user_supplier_country_19 = "Portugal"
user_supplier_name_19 = "Tecidos do Porto"
user_supplier_address_19 = "Praça da Liberdade 126, 4000-322 Porto, Portugal"
user_supplier_description_19 = ""
user_supplier_price_19 = "€€€"
user_supplier_sus_19 = rand(3..5)

user_supplier_19 = User.create(
  email: "#{user_supplier_name_19}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_19}",
  address: "#{user_supplier_address_19}",
  description: "#{user_supplier_description_19}",
  country: "#{user_supplier_country_19}",
  email: "#{user_supplier_name_19}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_19}",
  sustainability_rating: "#{user_supplier_sus_19}",
  minimum_quantity: rand(19..300),
  user: user_supplier_19
)

# ---------------------------------------------------------------------------

# user_supplier_spain_20
user_supplier_country_20 = "Portugal"
user_supplier_name_20 = "ModaArte Português"
user_supplier_address_20 = "Estr. da Circunvalação 8114 8116, 4200-163 Porto, Portugal"
user_supplier_description_20 = ""
user_supplier_price_20 = "€€€"
user_supplier_sus_20 = rand(3..5)

user_supplier_20 = User.create(
  email: "#{user_supplier_name_20}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_20}",
  address: "#{user_supplier_address_20}",
  description: "#{user_supplier_description_20}",
  country: "#{user_supplier_country_20}",
  email: "#{user_supplier_name_20}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_20}",
  sustainability_rating: "#{user_supplier_sus_20}",
  minimum_quantity: rand(20..300),
  user: user_supplier_20
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 21 through 24, replacing "20" with "21", "22", and so on.

# user_supplier_spain_21
user_supplier_country_21 = "Portugal"
user_supplier_name_21 = "TelaArtesanal Porto"
user_supplier_address_21 = "Shopping Center, Piso Mouzinho de Albuquerque, 4150-365 Porto, Portugal"
user_supplier_description_21 = ""
user_supplier_price_21 = "€€€"
user_supplier_sus_21 = rand(3..5)

user_supplier_21 = User.create(
  email: "#{user_supplier_name_21}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_21}",
  address: "#{user_supplier_address_21}",
  description: "#{user_supplier_description_21}",
  country: "#{user_supplier_country_21}",
  email: "#{user_supplier_name_21}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_21}",
  sustainability_rating: "#{user_supplier_sus_21}",
  minimum_quantity: rand(21..300),
  user: user_supplier_21
)

# ---------------------------------------------------------------------------

# user_supplier_spain_22
user_supplier_country_22 = "Portugal"
user_supplier_name_22 = "ModaClássica Lisboa"
user_supplier_address_22 = "Av. António Augusto de Aguiar 31, 1069-413 Lisboa, Portugal"
user_supplier_description_22 = ""
user_supplier_price_22 = "€€€"
user_supplier_sus_22 = rand(3..5)

user_supplier_22 = User.create(
  email: "#{user_supplier_name_22}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_22}",
  address: "#{user_supplier_address_22}",
  description: "#{user_supplier_description_22}",
  country: "#{user_supplier_country_22}",
  email: "#{user_supplier_name_22}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_22}",
  sustainability_rating: "#{user_supplier_sus_22}",
  minimum_quantity: rand(22..300),
  user: user_supplier_22
)

# ---------------------------------------------------------------------------

# user_supplier_spain_23
user_supplier_country_23 = "Portugal"
user_supplier_name_23 = "TelaVanguarda Algarve"
user_supplier_address_23 = "Sitio Do Farrobo. 184A, 8150-032 São Brás de Alportel, Portugal"
user_supplier_description_23 = ""
user_supplier_price_23 = "€€€"
user_supplier_sus_23 = rand(3..5)

user_supplier_23 = User.create(
  email: "#{user_supplier_name_23}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_23}",
  address: "#{user_supplier_address_23}",
  description: "#{user_supplier_description_23}",
  country: "#{user_supplier_country_23}",
  email: "#{user_supplier_name_23}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_23}",
  sustainability_rating: "#{user_supplier_sus_23}",
  minimum_quantity: rand(23..300),
  user: user_supplier_23
)

# ---------------------------------------------------------------------------

# user_supplier_spain_24
user_supplier_country_24 = "Portugal"
user_supplier_name_24 = "Têxteis Costura Lusitana"
user_supplier_address_24 = "Rua da Eira Cimeira n.50, 6120-230, Portugal"
user_supplier_description_24 = ""
user_supplier_price_24 = "€€€"
user_supplier_sus_24 = rand(3..5)

user_supplier_24 = User.create(
  email: "#{user_supplier_name_24}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_24}",
  address: "#{user_supplier_address_24}",
  description: "#{user_supplier_description_24}",
  country: "#{user_supplier_country_24}",
  email: "#{user_supplier_name_24}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_24}",
  sustainability_rating: "#{user_supplier_sus_24}",
  minimum_quantity: rand(24..300),
  user: user_supplier_24
)

# ---------------------------------------------------------------------------

# user_supplier_spain_25
user_supplier_country_25 = "Portugal"
user_supplier_name_25 = "ModaArteTêxtil Braga"
user_supplier_address_25 = "Santuário do Sameiro, Av. Nossa Sra. do Sameiro 44, 4715-616 Braga, Portugal"
user_supplier_description_25 = ""
user_supplier_price_25 = "€€€"
user_supplier_sus_25 = rand(3..5)

user_supplier_25 = User.create(
  email: "#{user_supplier_name_25}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_25}",
  address: "#{user_supplier_address_25}",
  description: "#{user_supplier_description_25}",
  country: "#{user_supplier_country_25}",
  email: "#{user_supplier_name_25}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_25}",
  sustainability_rating: "#{user_supplier_sus_25}",
  minimum_quantity: rand(25..300),
  user: user_supplier_25
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 26 and beyond, replacing "25" with the desired number.

# user_supplier_spain_26
user_supplier_country_26 = "Portugal"
user_supplier_name_26 = "Têxteis do Douro"
user_supplier_address_26 = "R. Urrana, 4910-508 Vila Praia de Âncora, Portugal"
user_supplier_description_26 = ""
user_supplier_price_26 = "€€€"
user_supplier_sus_26 = rand(3..5)

user_supplier_26 = User.create(
  email: "#{user_supplier_name_26}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_26}",
  address: "#{user_supplier_address_26}",
  description: "#{user_supplier_description_26}",
  country: "#{user_supplier_country_26}",
  email: "#{user_supplier_name_26}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_26}",
  sustainability_rating: "#{user_supplier_sus_26}",
  minimum_quantity: rand(26..300),
  user: user_supplier_26
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 27 and beyond, replacing "26" with the desired number.

# user_supplier_spain_27
user_supplier_country_27 = "Portugal"
user_supplier_name_27 = "Lisbon Weaving Excellence"
user_supplier_address_27 = "R. Conceição Fernandes S/N, 4434-502 Vila Nova de Gaia, Portugal"
user_supplier_description_27 = ""
user_supplier_price_27 = "€€€"
user_supplier_sus_27 = rand(3..5)

user_supplier_27 = User.create(
  email: "#{user_supplier_name_27}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_27}",
  address: "#{user_supplier_address_27}",
  description: "#{user_supplier_description_27}",
  country: "#{user_supplier_country_27}",
  email: "#{user_supplier_name_27}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_27}",
  sustainability_rating: "#{user_supplier_sus_27}",
  minimum_quantity: rand(27..300),
  user: user_supplier_27
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 28 and beyond, replacing "27" with the desired number.

# user_supplier_spain_28
user_supplier_country_28 = "Portugal"
user_supplier_name_28 = "Porto Fabrics"
user_supplier_address_28 = "R. Mte. Guilherme Camarinha 59, 4200-537 Porto, Portugal"
user_supplier_description_28 = ""
user_supplier_price_28 = "€€€"
user_supplier_sus_28 = rand(3..5)

user_supplier_28 = User.create(
  email: "#{user_supplier_name_28}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_28}",
  address: "#{user_supplier_address_28}",
  description: "#{user_supplier_description_28}",
  country: "#{user_supplier_country_28}",
  email: "#{user_supplier_name_28}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_28}",
  sustainability_rating: "#{user_supplier_sus_28}",
  minimum_quantity: rand(28..300),
  user: user_supplier_28
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 29 and beyond, replacing "28" with the desired number.

# C. - MOROCCO SUPPLIERS -------------------------------------

# user_supplier_spain_29
user_supplier_country_29 = "Morocco"
user_supplier_name_29 = "Moroccan Textile Innovators Ltd."
user_supplier_address_29 = Faker::Address.street_address,
user_supplier_description_29 = ""
user_supplier_price_29 = "€€€"
user_supplier_sus_29 = rand(3..5)

user_supplier_29 = User.create(
  email: "#{user_supplier_name_29}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_29}",
  address: "#{user_supplier_address_29}",
  description: "#{user_supplier_description_29}",
  country: "#{user_supplier_country_29}",
  email: "#{user_supplier_name_29}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_29}",
  sustainability_rating: "#{user_supplier_sus_29}",
  minimum_quantity: rand(29..300),
  user: user_supplier_29
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 30 and beyond, replacing "29" with the desired number.

# user_supplier_spain_30
user_supplier_country_30 = "Morocco"
user_supplier_name_30 = "Marrakech Fashion Weavers"
user_supplier_address_30 = Faker::Address.street_address,
user_supplier_description_30 = ""
user_supplier_price_30 = "€€€"
user_supplier_sus_30 = rand(3..5)

user_supplier_30 = User.create(
  email: "#{user_supplier_name_30}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_30}",
  address: "#{user_supplier_address_30}",
  description: "#{user_supplier_description_30}",
  country: "#{user_supplier_country_30}",
  email: "#{user_supplier_name_30}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_30}",
  sustainability_rating: "#{user_supplier_sus_30}",
  minimum_quantity: rand(30..300),
  user: user_supplier_30
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 31 and beyond, replacing "30" with the desired number.

# user_supplier_spain_31
user_supplier_country_31 = "Morocco"
user_supplier_name_31 = "Agadir Innovation Textiles"
user_supplier_address_31 = Faker::Address.street_address,
user_supplier_description_31 = ""
user_supplier_price_31 = "€€€"
user_supplier_sus_31 = rand(3..5)

user_supplier_31 = User.create(
  email: "#{user_supplier_name_31}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_31}",
  address: "#{user_supplier_address_31}",
  description: "#{user_supplier_description_31}",
  country: "#{user_supplier_country_31}",
  email: "#{user_supplier_name_31}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_31}",
  sustainability_rating: "#{user_supplier_sus_31}",
  minimum_quantity: rand(31..300),
  user: user_supplier_31
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 32 and beyond, replacing "31" with the desired number.

# user_supplier_spain_32
user_supplier_country_32 = "Morocco"
user_supplier_name_32 = "Tangier Creative Fabrics"
user_supplier_address_32 = Faker::Address.street_address,
user_supplier_description_32 = ""
user_supplier_price_32 = "€€€"
user_supplier_sus_32 = rand(3..5)

user_supplier_32 = User.create(
  email: "#{user_supplier_name_32}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_32}",
  address: "#{user_supplier_address_32}",
  description: "#{user_supplier_description_32}",
  country: "#{user_supplier_country_32}",
  email: "#{user_supplier_name_32}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_32}",
  sustainability_rating: "#{user_supplier_sus_32}",
  minimum_quantity: rand(32..300),
  user: user_supplier_32
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 33 and beyond, replacing "32" with the desired number.

# D. - ITALY SUPPLIERS ------------------------------------------------


# user_supplier_spain_33
user_supplier_country_33 = "Italy"
user_supplier_name_33 = "Venetian Fabrics"
user_supplier_address_33 = Faker::Address.street_address,
user_supplier_description_33 = ""
user_supplier_price_33 = "€€€"
user_supplier_sus_33 = rand(3..5)

user_supplier_33 = User.create(
  email: "#{user_supplier_name_33}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_33}",
  address: "#{user_supplier_address_33}",
  description: "#{user_supplier_description_33}",
  country: "#{user_supplier_country_33}",
  email: "#{user_supplier_name_33}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_33}",
  sustainability_rating: "#{user_supplier_sus_33}",
  minimum_quantity: rand(33..300),
  user: user_supplier_33
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 34 and beyond, replacing "33" with the desired number.

# user_supplier_spain_34
user_supplier_country_34 = "Italy"
user_supplier_name_34 = "Artisanal Fabrics of Rome"
user_supplier_address_34 = Faker::Address.street_address,
user_supplier_description_34 = ""
user_supplier_price_34 = "€€€"
user_supplier_sus_34 = rand(3..5)

user_supplier_34 = User.create(
  email: "#{user_supplier_name_34}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_34}",
  address: "#{user_supplier_address_34}",
  description: "#{user_supplier_description_34}",
  country: "#{user_supplier_country_34}",
  email: "#{user_supplier_name_34}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_34}",
  sustainability_rating: "#{user_supplier_sus_34}",
  minimum_quantity: rand(34..300),
  user: user_supplier_34
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 35 and beyond, replacing "34" with the desired number.

# user_supplier_spain_35
user_supplier_country_35 = "Italy"
user_supplier_name_35 = "Sicilian Silk Elegance"
user_supplier_address_35 = Faker::Address.street_address,
user_supplier_description_35 = ""
user_supplier_price_35 = "€€€"
user_supplier_sus_35 = rand(3..5)

user_supplier_35 = User.create(
  email: "#{user_supplier_name_35}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_35}",
  address: "#{user_supplier_address_35}",
  description: "#{user_supplier_description_35}",
  country: "#{user_supplier_country_35}",
  email: "#{user_supplier_name_35}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_35}",
  sustainability_rating: "#{user_supplier_sus_35}",
  minimum_quantity: rand(35..300),
  user: user_supplier_35
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 36 and beyond, replacing "35" with the desired number.

# user_supplier_spain_36
user_supplier_country_36 = "Italy"
user_supplier_name_36 = "Milanese Textile Excellence"
user_supplier_address_36 = Faker::Address.street_address,
user_supplier_description_36 = ""
user_supplier_price_36 = "€€€"
user_supplier_sus_36 = rand(3..5)

user_supplier_36 = User.create(
  email: "#{user_supplier_name_36}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_36}",
  address: "#{user_supplier_address_36}",
  description: "#{user_supplier_description_36}",
  country: "#{user_supplier_country_36}",
  email: "#{user_supplier_name_36}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_36}",
  sustainability_rating: "#{user_supplier_sus_36}",
  minimum_quantity: rand(36..300),
  user: user_supplier_36
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 37 and beyond, replacing "36" with the desired number.

# E. - EGYPT SUPPLIERS ----------

# user_supplier_spain_37
user_supplier_country_37 = "Egypt"
user_supplier_name_37 = "Luxor Fabrics"
user_supplier_address_37 = Faker::Address.street_address,
user_supplier_description_37 = ""
user_supplier_price_37 = "€€€"
user_supplier_sus_37 = rand(3..5)

user_supplier_37 = User.create(
  email: "#{user_supplier_name_37}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_37}",
  address: "#{user_supplier_address_37}",
  description: "#{user_supplier_description_37}",
  country: "#{user_supplier_country_37}",
  email: "#{user_supplier_name_37}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_37}",
  sustainability_rating: "#{user_supplier_sus_37}",
  minimum_quantity: rand(37..300),
  user: user_supplier_37
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 38 and beyond, replacing "37" with the desired number.

# user_supplier_spain_38
user_supplier_country_38 = "Egypt"
user_supplier_name_38 = "Artisanal Fabrics of Alexandria"
user_supplier_address_38 = Faker::Address.street_address,
user_supplier_description_38 = ""
user_supplier_price_38 = "€€€"
user_supplier_sus_38 = rand(3..5)

user_supplier_38 = User.create(
  email: "#{user_supplier_name_38}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_38}",
  address: "#{user_supplier_address_38}",
  description: "#{user_supplier_description_38}",
  country: "#{user_supplier_country_38}",
  email: "#{user_supplier_name_38}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_38}",
  sustainability_rating: "#{user_supplier_sus_38}",
  minimum_quantity: rand(38..300),
  user: user_supplier_38
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 39 and beyond, replacing "38" with the desired number.

# user_supplier_spain_39
user_supplier_country_39 = "Egypt"
user_supplier_name_39 = "Elegant Threads of Giza"
user_supplier_address_39 = Faker::Address.street_address,
user_supplier_description_39 = ""
user_supplier_price_39 = "€€€"
user_supplier_sus_39 = rand(3..5)

user_supplier_39 = User.create(
  email: "#{user_supplier_name_39}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_39}",
  address: "#{user_supplier_address_39}",
  description: "#{user_supplier_description_39}",
  country: "#{user_supplier_country_39}",
  email: "#{user_supplier_name_39}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_39}",
  sustainability_rating: "#{user_supplier_sus_39}",
  minimum_quantity: rand(39..300),
  user: user_supplier_39
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 40 and beyond, replacing "39" with the desired number.

# user_supplier_spain_40
user_supplier_country_40 = "Egypt"
user_supplier_name_40 = "Egyptian Sewing Artisans"
user_supplier_address_40 = Faker::Address.street_address,
user_supplier_description_40 = ""
user_supplier_price_40 = "€€€"
user_supplier_sus_40 = rand(3..5)

user_supplier_40 = User.create(
  email: "#{user_supplier_name_40}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_40}",
  address: "#{user_supplier_address_40}",
  description: "#{user_supplier_description_40}",
  country: "#{user_supplier_country_40}",
  email: "#{user_supplier_name_40}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_40}",
  sustainability_rating: "#{user_supplier_sus_40}",
  minimum_quantity: rand(40..300),
  user: user_supplier_40
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 41 and beyond, replacing "40" with the desired number.


# F. - TURKEY SUPPLIERS ---------------------------------------


# user_supplier_spain_41
user_supplier_country_41 = "Turkey"
user_supplier_name_41 = "Anatolian Textile Creations"
user_supplier_address_41 = Faker::Address.street_address,
user_supplier_description_41 = ""
user_supplier_price_41 = "€€€"
user_supplier_sus_41 = rand(3..5)

user_supplier_41 = User.create(
  email: "#{user_supplier_name_41}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_41}",
  address: "#{user_supplier_address_41}",
  description: "#{user_supplier_description_41}",
  country: "#{user_supplier_country_41}",
  email: "#{user_supplier_name_41}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_41}",
  sustainability_rating: "#{user_supplier_sus_41}",
  minimum_quantity: rand(41..300),
  user: user_supplier_41
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 42 and beyond, replacing "41" with the desired number.

# user_supplier_spain_42
user_supplier_country_42 = "Turkey"
user_supplier_name_42 = "Mediterranean Innovation Textiles"
user_supplier_address_42 = Faker::Address.street_address,
user_supplier_description_42 = ""
user_supplier_price_42 = "€€€"
user_supplier_sus_42 = rand(3..5)

user_supplier_42 = User.create(
  email: "#{user_supplier_name_42}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_42}",
  address: "#{user_supplier_address_42}",
  description: "#{user_supplier_description_42}",
  country: "#{user_supplier_country_42}",
  email: "#{user_supplier_name_42}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_42}",
  sustainability_rating: "#{user_supplier_sus_42}",
  minimum_quantity: rand(42..300),
  user: user_supplier_42
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 43 and beyond, replacing "42" with the desired number.

# user_supplier_spain_43
user_supplier_country_43 = "Turkey"
user_supplier_name_43 = "Ankara Silk Craftsmen"
user_supplier_address_43 = Faker::Address.street_address,
user_supplier_description_43 = ""
user_supplier_price_43 = "€€€"
user_supplier_sus_43 = rand(3..5)

user_supplier_43 = User.create(
  email: "#{user_supplier_name_43}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_43}",
  address: "#{user_supplier_address_43}",
  description: "#{user_supplier_description_43}",
  country: "#{user_supplier_country_43}",
  email: "#{user_supplier_name_43}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_43}",
  sustainability_rating: "#{user_supplier_sus_43}",
  minimum_quantity: rand(43..300),
  user: user_supplier_43
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 44 and beyond, replacing "43" with the desired number.


# user_supplier_spain_44
user_supplier_country_44 = "Turkey"
user_supplier_name_44 = "Turkish Textile Artisans Ltd."
user_supplier_address_44 = Faker::Address.street_address,
user_supplier_description_44 = ""
user_supplier_price_44 = "€€€"
user_supplier_sus_44 = rand(3..5)

user_supplier_44 = User.create(
  email: "#{user_supplier_name_44}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_44}",
  address: "#{user_supplier_address_44}",
  description: "#{user_supplier_description_44}",
  country: "#{user_supplier_country_44}",
  email: "#{user_supplier_name_44}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_44}",
  sustainability_rating: "#{user_supplier_sus_44}",
  minimum_quantity: rand(44..300),
  user: user_supplier_44
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 45 and beyond, replacing "44" with the desired number.

# G. - BANGLADESH SUPPLIERS -----------------------------------------


# user_supplier_spain_45
user_supplier_country_45 = "Bangladesh"
user_supplier_name_45 = "Bangladesh Textile Innovations Ltd."
user_supplier_address_45 = Faker::Address.street_address,
user_supplier_description_45 = ""
user_supplier_price_45 = "€€€"
user_supplier_sus_45 = rand(3..5)

user_supplier_45 = User.create(
  email: "#{user_supplier_name_45}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_45}",
  address: "#{user_supplier_address_45}",
  description: "#{user_supplier_description_45}",
  country: "#{user_supplier_country_45}",
  email: "#{user_supplier_name_45}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_45}",
  sustainability_rating: "#{user_supplier_sus_45}",
  minimum_quantity: rand(45..300),
  user: user_supplier_45
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 46 and beyond, replacing "45" with the desired number.

# user_supplier_spain_46
user_supplier_country_46 = "Bangladesh"
user_supplier_name_46 = "Creative Textiles Bangladesh"
user_supplier_address_46 = Faker::Address.street_address,
user_supplier_description_46 = ""
user_supplier_price_46 = "€€€"
user_supplier_sus_46 = rand(3..5)

user_supplier_46 = User.create(
  email: "#{user_supplier_name_46}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_46}",
  address: "#{user_supplier_address_46}",
  description: "#{user_supplier_description_46}",
  country: "#{user_supplier_country_46}",
  email: "#{user_supplier_name_46}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_46}",
  sustainability_rating: "#{user_supplier_sus_46}",
  minimum_quantity: rand(46..300),
  user: user_supplier_46
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 47 and beyond, replacing "46" with the desired number.

# user_supplier_spain_47
user_supplier_country_47 = "Bangladesh"
user_supplier_name_47 = "Sylhet Creative Fabrics"
user_supplier_address_47 = Faker::Address.street_address,
user_supplier_description_47 = ""
user_supplier_price_47 = "€€€"
user_supplier_sus_47 = rand(3..5)

user_supplier_47 = User.create(
  email: "#{user_supplier_name_47}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_47}",
  address: "#{user_supplier_address_47}",
  description: "#{user_supplier_description_47}",
  country: "#{user_supplier_country_47}",
  email: "#{user_supplier_name_47}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_47}",
  sustainability_rating: "#{user_supplier_sus_47}",
  minimum_quantity: rand(47..300),
  user: user_supplier_47
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 48 and beyond, replacing "47" with the desired number.

# user_supplier_spain_48
user_supplier_country_48 = "Bangladesh"
user_supplier_name_48 = "Sustainable Fashion in Comilla"
user_supplier_address_48 = Faker::Address.street_address,
user_supplier_description_48 = ""
user_supplier_price_48 = "€€€"
user_supplier_sus_48 = rand(3..5)

user_supplier_48 = User.create(
  email: "#{user_supplier_name_48}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_48}",
  address: "#{user_supplier_address_48}",
  description: "#{user_supplier_description_48}",
  country: "#{user_supplier_country_48}",
  email: "#{user_supplier_name_48}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_48}",
  sustainability_rating: "#{user_supplier_sus_48}",
  minimum_quantity: rand(48..300),
  user: user_supplier_48
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 49 and beyond, replacing "48" with the desired number.

# H. - CHINA SUPPLIERS ----------

# user_supplier_spain_49
user_supplier_country_49 = "China"
user_supplier_name_49 = "Guangzhou Crafted Textiles"
user_supplier_address_49 = Faker::Address.street_address,
user_supplier_description_49 = ""
user_supplier_price_49 = "€€€"
user_supplier_sus_49 = rand(3..5)

user_supplier_49 = User.create(
  email: "#{user_supplier_name_49}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_49}",
  address: "#{user_supplier_address_49}",
  description: "#{user_supplier_description_49}",
  country: "#{user_supplier_country_49}",
  email: "#{user_supplier_name_49}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_49}",
  sustainability_rating: "#{user_supplier_sus_49}",
  minimum_quantity: rand(49..300),
  user: user_supplier_49
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 50 and beyond, replacing "49" with the desired number.

# user_supplier_spain_50
user_supplier_country_50 = "China"
user_supplier_name_50 = "Beijing Fabrics"
user_supplier_address_50 = Faker::Address.street_address,
user_supplier_description_50 = ""
user_supplier_price_50 = "€€€"
user_supplier_sus_50 = rand(3..5)

user_supplier_50 = User.create(
  email: "#{user_supplier_name_50}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_50}",
  address: "#{user_supplier_address_50}",
  description: "#{user_supplier_description_50}",
  country: "#{user_supplier_country_50}",
  email: "#{user_supplier_name_50}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_50}",
  sustainability_rating: "#{user_supplier_sus_50}",
  minimum_quantity: rand(50..300),
  user: user_supplier_50
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 51 and beyond, replacing "50" with the desired number.

# user_supplier_spain_51
user_supplier_country_51 = "China"
user_supplier_name_51 = "Hangzhou Textile Art"
user_supplier_address_51 = Faker::Address.street_address,
user_supplier_description_51 = ""
user_supplier_price_51 = "€€€"
user_supplier_sus_51 = rand(3..5)

user_supplier_51 = User.create(
  email: "#{user_supplier_name_51}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_51}",
  address: "#{user_supplier_address_51}",
  description: "#{user_supplier_description_51}",
  country: "#{user_supplier_country_51}",
  email: "#{user_supplier_name_51}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_51}",
  sustainability_rating: "#{user_supplier_sus_51}",
  minimum_quantity: rand(51..300),
  user: user_supplier_51
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 52 and beyond, replacing "51" with the desired number.

# user_supplier_spain_52
user_supplier_country_52 = "China"
user_supplier_name_52 = "Pearl River Textiles"
user_supplier_address_52 = Faker::Address.street_address,
user_supplier_description_52 = ""
user_supplier_price_52 = "€€€"
user_supplier_sus_52 = rand(3..5)

user_supplier_52 = User.create(
  email: "#{user_supplier_name_52}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_52}",
  address: "#{user_supplier_address_52}",
  description: "#{user_supplier_description_52}",
  country: "#{user_supplier_country_52}",
  email: "#{user_supplier_name_52}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_52}",
  sustainability_rating: "#{user_supplier_sus_52}",
  minimum_quantity: rand(52..300),
  user: user_supplier_52
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 53 and beyond, replacing "52" with the desired number.

# I. - FRANCE SUPPLIERS ----------


# user_supplier_spain_53
user_supplier_country_53 = "France"
user_supplier_name_53 = "Lyon Fabrics"
user_supplier_address_53 = Faker::Address.street_address,
user_supplier_description_53 = ""
user_supplier_price_53 = "€€€"
user_supplier_sus_53 = rand(3..5)

user_supplier_53 = User.create(
  email: "#{user_supplier_name_53}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_53}",
  address: "#{user_supplier_address_53}",
  description: "#{user_supplier_description_53}",
  country: "#{user_supplier_country_53}",
  email: "#{user_supplier_name_53}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_53}",
  sustainability_rating: "#{user_supplier_sus_53}",
  minimum_quantity: rand(53..300),
  user: user_supplier_53
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 54 and beyond, replacing "53" with the desired number.

# user_supplier_spain_54
user_supplier_country_54 = "France"
user_supplier_name_54 = "Riviera Textiles"
user_supplier_address_54 = Faker::Address.street_address,
user_supplier_description_54 = ""
user_supplier_price_54 = "€€€"
user_supplier_sus_54 = rand(3..5)

user_supplier_54 = User.create(
  email: "#{user_supplier_name_54}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_54}",
  address: "#{user_supplier_address_54}",
  description: "#{user_supplier_description_54}",
  country: "#{user_supplier_country_54}",
  email: "#{user_supplier_name_54}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_54}",
  sustainability_rating: "#{user_supplier_sus_54}",
  minimum_quantity: rand(54..300),
  user: user_supplier_54
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 55 and beyond, replacing "54" with the desired number.

# user_supplier_spain_55
user_supplier_country_55 = "France"
user_supplier_name_55 = "Alsace Silk Studios"
user_supplier_address_55 = Faker::Address.street_address,
user_supplier_description_55 = ""
user_supplier_price_55 = "€€€"
user_supplier_sus_55 = rand(3..5)

user_supplier_55 = User.create(
  email: "#{user_supplier_name_55}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_55}",
  address: "#{user_supplier_address_55}",
  description: "#{user_supplier_description_55}",
  country: "#{user_supplier_country_55}",
  email: "#{user_supplier_name_55}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_55}",
  sustainability_rating: "#{user_supplier_sus_55}",
  minimum_quantity: rand(55..300),
  user: user_supplier_55
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 56 and beyond, replacing "55" with the desired number.

# user_supplier_spain_56
user_supplier_country_56 = "France"
user_supplier_name_56 = "French LoomCraft"
user_supplier_address_56 = Faker::Address.street_address,
user_supplier_description_56 = ""
user_supplier_price_56 = "€€€"
user_supplier_sus_56 = rand(3..5)

user_supplier_56 = User.create(
  email: "#{user_supplier_name_56}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_56}",
  address: "#{user_supplier_address_56}",
  description: "#{user_supplier_description_56}",
  country: "#{user_supplier_country_56}",
  email: "#{user_supplier_name_56}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_56}",
  sustainability_rating: "#{user_supplier_sus_56}",
  minimum_quantity: rand(56..300),
  user: user_supplier_56
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 57 and beyond, replacing "56" with the desired number.

# J. - PERU SUPPLIERS ----------

# user_supplier_spain_57
user_supplier_country_57 = "Peru"
user_supplier_name_57 = "Puno Cashmere Crafts"
user_supplier_address_57 = Faker::Address.street_address,
user_supplier_description_57 = ""
user_supplier_price_57 = "€€€"
user_supplier_sus_57 = rand(3..5)

user_supplier_57 = User.create(
  email: "#{user_supplier_name_57}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_57}",
  address: "#{user_supplier_address_57}",
  description: "#{user_supplier_description_57}",
  country: "#{user_supplier_country_57}",
  email: "#{user_supplier_name_57}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_57}",
  sustainability_rating: "#{user_supplier_sus_57}",
  minimum_quantity: rand(57..300),
  user: user_supplier_57
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 58 and beyond, replacing "57" with the desired number.

# user_supplier_spain_58
user_supplier_country_58 = "Peru"
user_supplier_name_58 = "Cashmere Haven Peru"
user_supplier_address_58 = Faker::Address.street_address,
user_supplier_description_58 = ""
user_supplier_price_58 = "€€€"
user_supplier_sus_58 = rand(3..5)

user_supplier_58 = User.create(
  email: "#{user_supplier_name_58}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_58}",
  address: "#{user_supplier_address_58}",
  description: "#{user_supplier_description_58}",
  country: "#{user_supplier_country_58}",
  email: "#{user_supplier_name_58}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_58}",
  sustainability_rating: "#{user_supplier_sus_58}",
  minimum_quantity: rand(58..300),
  user: user_supplier_58
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 59 and beyond, replacing "58" with the desired number.

# user_supplier_spain_59
user_supplier_country_59 = "Peru"
user_supplier_name_59 = "Cashmere Sewing Artisans"
user_supplier_address_59 = Faker::Address.street_address,
user_supplier_description_59 = ""
user_supplier_price_59 = "€€€"
user_supplier_sus_59 = rand(3..5)

user_supplier_59 = User.create(
  email: "#{user_supplier_name_59}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_59}",
  address: "#{user_supplier_address_59}",
  description: "#{user_supplier_description_59}",
  country: "#{user_supplier_country_59}",
  email: "#{user_supplier_name_59}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_59}",
  sustainability_rating: "#{user_supplier_sus_59}",
  minimum_quantity: rand(59..300),
  user: user_supplier_59
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 60 and beyond, replacing "59" with the desired number.

# user_supplier_spain_60
user_supplier_country_60 = "Peru"
user_supplier_name_60 = "Sustainable Cashmere Couture"
user_supplier_address_60 = Faker::Address.street_address,
user_supplier_description_60 = ""
user_supplier_price_60 = "€€€"
user_supplier_sus_60 = rand(3..5)

user_supplier_60 = User.create(
  email: "#{user_supplier_name_60}@gmail.com",
  password: "123456",
  user_type: "supplier",
)

Supplier.create(
  name: "#{user_supplier_name_60}",
  address: "#{user_supplier_address_60}",
  description: "#{user_supplier_description_60}",
  country: "#{user_supplier_country_60}",
  email: "#{user_supplier_name_60}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: "#{user_supplier_price_60}",
  sustainability_rating: "#{user_supplier_sus_60}",
  minimum_quantity: rand(60..300),
  user: user_supplier_60
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 61 and beyond, replacing "60" with the desired number.




#-------------------------DONE SUPPLIERS--------------------------------------------------------------







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
