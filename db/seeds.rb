Message.destroy_all
Chatroom.destroy_all
Favorite.destroy_all
Product.destroy_all
Project.destroy_all
SupplierMaterial.destroy_all
Brand.destroy_all
Supplier.destroy_all
User.destroy_all
Material.destroy_all

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




materials = ["cotton", "polyester", "cashmere", "linen", "Silk", "Wool", "Leather", "Denim", "Velvet", "Nylon", "Spandex", "Rayon", "Satin", "Chiffon", "Tulle", "Fleece", "Tweed", "Corduroy", "Lace", "Suede", "Jacquard", "Chambray", "Organza"]

materials.each do |material_name|
  Material.create!(name: material_name)
end




# ------------------------------ SEEDS FOR FINAL DEMO ---------------------------------------------------------

# The brand we will use for the demo


# For the demo we will have suppliers from 8 different countries

  # A. - SPAIN SUPPLIERS ----------

  #------------------------TEMPLATE: ERRASE WHEN DONE------------------------------
  # user_supplier_spain_1
#   user_supplier_country_1 = ""
#   user_supplier_name_1 = ""
#   user_supplier_address_1 = ""
#   user_supplier_description_1 = ""
#   user_supplier_price_1 = "€€€"
#   user_supplier_sus_1 = rand(3..5)

#   user_supplier_1 = User.create(
#     email: "#{user_supplier_name_1}@gmail.com",
#     password: "123456",
#     user_type: "supplier",
#   )

# Supplier.create(
#   name: "#{user_supplier_name_1}",
#   address: "#{user_supplier_address_1}",
#   description: "#{user_supplier_description_1}",
#   country: "#{user_supplier_country_1}",
#   email: "#{user_supplier_name_1}@gmail.com",
#   phone_number: Faker::PhoneNumber.cell_phone,
#   price_rating: "#{user_supplier_price_1}",
#   sustainability_rating: "#{user_supplier_sus_1}",
#   minimum_quantity: rand(10..300).round(-1),
#   user: user_supplier_1
# )

# ---------------------------------------------------------------------------

# user_supplier_spain_1
user_supplier_country_1 = "Spain"
user_supplier_name_1 = "ModaGalicia"
user_supplier_address_1 = "Polígono Industrial de La Grela, Rúa Severo Ochoa, 6, 15008 A Coruña"
user_supplier_description_1 = "Moda Galicia is a distinguished textile supplier based in Spain, renowned for its commitment to quality and sustainability. Located in the heart of the industrial hub at Polígono Industrial de La Grela in A Coruña, Moda Galicia offers a premium selection of textile products made primarily from high-quality cotton.

Our textiles are known for their exceptional durability and comfort, making them perfect for a wide range of applications in the fashion and textile industry. While our products fall into the premium price range, they offer excellent value for the exceptional quality and sustainability they embody.

One of our standout features is our strong dedication to sustainability. We prioritize environmentally responsible practices in our manufacturing processes, ensuring that our cotton textiles are produced with minimal ecological impact. Moda Galicia is your trusted partner for top-tier cotton textiles that combine quality, sustainability, and style, making them the ideal choice for brands and businesses committed to excellence and eco-consciousness."
user_supplier_price_1 = "€€€"
user_supplier_sus_1 = 5

puts "creating 1 supplier"
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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_1
)

#-------------------------------------------------------------

puts "creating 2 supplier"
# user_supplier_spain_2
user_supplier_country_2 = "Spain"
user_supplier_name_2 = "TelasBarcelona"
user_supplier_address_2 = "Av. Diagonal, 661, 08028 Barcelona"
user_supplier_description_2 = "TelasBarcelona, located in the vibrant city of Barcelona, is your destination for premium fabrics. They offer top-quality materials at a premium price point, making it an excellent choice for those looking for high-end options. Sustainability is a top priority with a rating of 5, ensuring eco-conscious creators have a premium source for their needs.

"
user_supplier_price_2 = "€€€"
user_supplier_sus_2 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_2
)

puts "creating 3 supplier"
#------------------------------------------------------
# user_supplier_spain_3
user_supplier_country_3 = "Spain"
user_supplier_name_3 = "TextilIbérica"
user_supplier_address_3 = "Canal, 23, 15650 Cambre, A Coruña"
user_supplier_description_3 = "TextilIbérica, situated in Cambre, A Coruña, specializes in premium fabrics, catering to creators seeking top-notch materials. While it comes at a premium price, its sustainability rating of 5 showcases its commitment to eco-friendly practices. For those in A Coruña, TextilIbérica is the premium choice.

"
user_supplier_price_3 = "€€€"
user_supplier_sus_3 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_3
)

# ---------------------------------------------------------------------------
puts "creating 4 supplier"
# user_supplier_spain_4
user_supplier_country_4 = "Spain"
user_supplier_name_4 = "Tejidos Innovadores S.L."
user_supplier_address_4 = "C. del Gral. Aranaz, 65, 28027 Madrid"
user_supplier_description_4 = "Tejidos Innovadores S.L., based in Madrid, is synonymous with premium fabrics. Creators in Madrid can rely on this supplier for high-quality materials, albeit at a premium price. Sustainability is a priority with a rating of 5, ensuring a responsible choice for top-tier fabrics.

"
user_supplier_price_4 = "€€€"
user_supplier_sus_4 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_4
)

# ---------------------------------------------------------------------------
puts "creating 5 supplier"
# user_supplier_spain_5
user_supplier_country_5 = "Spain"
user_supplier_name_5 = "Confecciones Catalanas"
user_supplier_address_5 = " C. d'Enric Granados, 66, 08008 Barcelona"
user_supplier_description_5 = "Confecciones Catalanas, nestled in Barcelona, offers premium materials at a premium price point. With a sustainability rating of 5, this supplier is a preferred choice for conscious creators in Barcelona seeking top-quality and eco-friendly fabrics.

"
user_supplier_price_5 = "€€€"
user_supplier_sus_5 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_5
)

# ---------------------------------------------------------------------------
puts "creating 6 supplier"

# user_supplier_spain_6
user_supplier_country_6 = "Spain"
user_supplier_name_6 = "TelaVanguardia Sevilla"
user_supplier_address_6 = "C. de Castelar, 24, 41001 Sevilla"
user_supplier_description_6 = "TelaVanguardia Sevilla, situated in the enchanting city of Sevilla, provides premium fabrics that come at a premium price. While sustainability is rated at 4, it's still a solid choice for quality materials with a touch of eco-consciousness, serving creators in Sevilla.

"
user_supplier_price_6 = "€€€"
user_supplier_sus_6 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_6
)

puts "creating 7 supplier"
# ---------------------------------------------------------------------------
# user_supplier_spain_7
user_supplier_country_7 = "Spain"
user_supplier_name_7 = "Tejidos Creativos S.A."
user_supplier_address_7 = "C. Francisco Zarandona, 6, 47003 Valladolid"
user_supplier_description_7 = "Tejidos Creativos S.A., based in Valladolid, offers fabrics at an average price. While not in the premium category, it maintains a commitment to sustainability with a rating of 4. Valladolid creators can find quality materials with eco-friendly considerations.

"
user_supplier_price_7 = "€€"
user_supplier_sus_7 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_7
)

# ---------------------------------------------------------------------------

puts "creating 8 supplier"
# user_supplier_spain_8
user_supplier_country_8 = "Spain"
user_supplier_name_8 = "TextilCosta del Sol"
user_supplier_address_8 = "Avenida Cervantes s/n Urb. Costa Bella, 29604 Marbella, Málaga"
user_supplier_description_8 = "TextilCosta del Sol, situated in Marbella, Málaga, offers fabrics at an average price. With a sustainability rating of 5, this supplier ensures responsible sourcing for creators in the sunny coastal region, making it an ideal choice for those looking for both quality and eco-friendliness.

"
user_supplier_price_8 = "€€"
user_supplier_sus_8 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_8
)
puts "creating 9 supplier"
# ---------------------------------------------------------------------------
# user_supplier_spain_9
user_supplier_country_9 = "Spain"
user_supplier_name_9 = "ModaTrendy Canarias"
user_supplier_address_9 = "Urbanizacion San Eugenio, 26, 38660 Costa Adeje, Santa Cruz de Tenerife"
user_supplier_description_9 = "ModaTrendy Canarias, located in Costa Adeje, Santa Cruz de Tenerife, provides fabrics at an average price. With a sustainability rating of 5, it is a reliable source for eco-conscious creators in the Canary Islands seeking affordability without compromising quality.

"
user_supplier_price_9 = "€€"
user_supplier_sus_9 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_9
)

# ---------------------------------------------------------------------------
puts "creating 10 supplier"
# user_supplier_spain_10
user_supplier_country_10 = "Spain"
user_supplier_name_10 = "TextilNaturaleza Asturias"
user_supplier_address_10 = "C. Marqués de Gastañaga, 13, 33009 Oviedo, Asturias"
user_supplier_description_10 = "TextilNaturaleza Asturias, situated in Oviedo, Asturias, offers fabrics at an average price, making it an accessible choice for creators in the region. It maintains a strong sustainability rating of 5, ensuring eco-conscious sourcing for Asturias-based creators.
"
user_supplier_price_10 = "€€"
user_supplier_sus_10 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_10
)

# ---------------------------------------------------------------------------
puts "creating 11 supplier"
# user_supplier_spain_11
user_supplier_country_11 = "Spain"
user_supplier_name_11 = "TextilNaturaleza Asturias"
user_supplier_address_11 = "Pl. Trascorrales, 6, 33009 Oviedo, Asturias"
user_supplier_description_11 = "TextilNaturaleza Asturias in Oviedo, Asturias, offers fabrics at an average price point, making it a suitable choice for budget-conscious creators. With a sustainability rating of 4, it strikes a balance between affordability and eco-consciousness, catering to the needs of Asturias-based designers.

"
user_supplier_price_11 = "€€"
user_supplier_sus_11 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_11
)

# ---------------------------------------------------------------------------
puts "creating supplier 12"
# user_supplier_spain_12
user_supplier_country_12 = "Spain"
user_supplier_name_12 = "ModaEstampados Galicia"
user_supplier_address_12 = "Rúa das Casas Reais, 21, 15704 Santiago de Compostela, A Coruña"
user_supplier_description_12 = "ModaEstampados Galicia, situated in Santiago de Compostela, A Coruña, provides fabrics at an average price. With a sustainability rating of 4, it ensures a responsible choice for creators in this historical city, offering both affordability and eco-friendly options.

"
user_supplier_price_12 = "€€"
user_supplier_sus_12 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_12
)

# ---------------------------------------------------------------------------
puts "creating supplier 13"

# user_supplier_spain_13
user_supplier_country_13 = "Spain"
user_supplier_name_13 = "Tejidos del Viento Murcia"
user_supplier_address_13 = "C. Trapería, 22, 30001 Murcia"
user_supplier_description_13 = "Tejidos del Viento Murcia, located in Murcia, offers fabrics at an average price point, making it a cost-effective choice for creators in the region. Sustainability is rated at 3, providing budget-conscious options with some eco considerations.

"
user_supplier_price_13 = "€€"
user_supplier_sus_13 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_13
)

puts "creating supplier 14"
# user_supplier_spain_14
user_supplier_country_14 = "Spain"
user_supplier_name_14 = "ModaArteTextil Zaragoz"
user_supplier_address_14 = "C. de los Mártires, 12, 50003 Zaragoza"
user_supplier_description_14 = "ModaArteTextil Zaragoza, found in the heart of Zaragoza, offers fabrics at an affordable price. Sustainability is rated at 3, providing a budget-friendly choice for creators in this historic city.

"
user_supplier_price_14 = "€"
user_supplier_sus_14 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_14
)

# ---------------------------------------------------------------------------
puts "creating supplier 15"
# user_supplier_spain_15
user_supplier_country_15 = "Spain"
user_supplier_name_15 = "TelaBordados Asturias"
user_supplier_address_15 = "Av. de Europa, 14, 33540 Arriondas, Asturias"
user_supplier_description_15 = "TelaBordados Asturias, located in Arriondas, Asturias, offers fabrics at an affordable price point, making it a wallet-friendly choice for creators. With a sustainability rating of 4, it combines affordability with eco-consciousness, serving the needs of Asturias-based designers.

"
user_supplier_price_15 = "€"
user_supplier_sus_15 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_15
)

# ---------------------------------------------------------------------------
puts "creating supplier 16"
# user_supplier_spain_16
user_supplier_country_16 = "Spain"
user_supplier_name_16 = "TextilSostenible Canarias"
user_supplier_address_16 = "C. Hespérides, 57, 38630 Costa del Silencio, Santa Cruz de Tenerife"
user_supplier_description_16 = "TextilSostenible Canarias, based in Costa del Silencio, Santa Cruz de Tenerife, provides fabrics at an affordable price. Sustainability is rated at 3, offering budget-friendly options with some eco considerations.

"
user_supplier_price_16 = "€"
user_supplier_sus_16 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_16
)

# ---------------------------------------------------------------------------
puts "creating supplier 17"
# B. - PORTUGAL SUPPLIERS ----------

# user_supplier_spain_17
user_supplier_country_17 = "Portugal"
user_supplier_name_17 = "Têxteis Portugueses S.A"
user_supplier_address_17 = "Av. Nossa Sra. Natividade 250, 4425-671 Pedrouços, Portugal"
user_supplier_description_17 = "Têxteis Portugueses S.A, located in Pedrouços, Portugal, specializes in premium fabrics with a high price tag. Sustainability is rated at 5, making it a top choice for eco-conscious creators looking for premium materials in Portugal.

"
user_supplier_price_17 = "€€€"
user_supplier_sus_17 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_17
)

# ---------------------------------------------------------------------------
puts "creating supplier 18"
# user_supplier_spain_18
user_supplier_country_18 = "Portugal"
user_supplier_name_18 = "ModaLusitana"
user_supplier_address_18 = "Rua do Rosário 241, 4050-524 Porto, Portugal"
user_supplier_description_18 = "ModaLusitana, situated in Porto, Portugal, offers premium fabrics at a high price. Sustainability is rated at 5, making it a premium and eco-friendly choice for creators in Porto.

"
user_supplier_price_18 = "€€€"
user_supplier_sus_18 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_18
)

# ---------------------------------------------------------------------------
puts "creating supplier 19"
# user_supplier_spain_19
user_supplier_country_19 = "Portugal"
user_supplier_name_19 = "Tecidos do Porto"
user_supplier_address_19 = "Praça da Liberdade 126, 4000-322 Porto, Portugal"
user_supplier_description_19 = "Tecidos do Porto, in the heart of Porto, Portugal, provides premium fabrics at a high price point. Sustainability is rated at 5, offering a premium and eco-conscious option for creators in this historic city.

"
user_supplier_price_19 = "€€€"
user_supplier_sus_19 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_19
)

# ---------------------------------------------------------------------------
puts "creating supplier 20"
# user_supplier_spain_20
user_supplier_country_20 = "Portugal"
user_supplier_name_20 = "ModaArte Português"
user_supplier_address_20 = "Estr. da Circunvalação 8114 8116, 4200-163 Porto, Portugal"
user_supplier_description_20 = "ModaArte Português, located in Porto, Portugal, specializes in premium fabrics with a high price tag. Sustainability is rated at 4, making it a premium choice with strong eco-consciousness for creators in Porto.
"
user_supplier_price_20 = "€€€"
user_supplier_sus_20 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_20
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 21 through 24, replacing "20" with "21", "22", and so on.
puts "creating supplier 21"
# user_supplier_spain_21
user_supplier_country_21 = "Portugal"
user_supplier_name_21 = "TelaArtesanal Porto"
user_supplier_address_21 = "Shopping Center, Piso Mouzinho de Albuquerque, 4150-365 Porto, Portugal"
user_supplier_description_21 = "TelaArtesanal Porto, nestled in the vibrant city of Porto, Portugal, is a noteworthy supplier of textiles. This establishment offers fabrics at an affordable price, making it an attractive choice for creators seeking both quality and affordability. Sustainability takes center stage here, with a commendable rating of 5. The commitment to eco-conscious practices ensures that your creative endeavors align with responsible choices. While specific materials are not provided, you can trust that TelaArtesanal Porto offers a diverse range of textiles to cater to your artistic needs in the bustling shopping center of Piso Mouzinho de Albuquerque.

"
user_supplier_price_21 = "€€"
user_supplier_sus_21 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_21
)

# ---------------------------------------------------------------------------
puts "creating supplier 22"
# user_supplier_spain_22
user_supplier_country_22 = "Portugal"
user_supplier_name_22 = "ModaClássica Lisboa"
user_supplier_address_22 = "Av. António Augusto de Aguiar 31, 1069-413 Lisboa, Portugal"
user_supplier_description_22 = "ModaClássica Lisboa, situated in the picturesque city of Lisboa, Portugal, stands out as a prominent supplier of fabrics. With textiles available at an average price, it strikes a balance between quality and cost-effectiveness. Sustainability is a top priority, boasting a rating of 5. This commitment to eco-friendly practices ensures that creators in Lisboa have access to responsible materials. Whether you're looking for classic or contemporary fabrics, ModaClássica Lisboa at Av. António Augusto de Aguiar is your go-to destination for artistic inspiration.

"
user_supplier_price_22 = "€€"
user_supplier_sus_22 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_22
)

# ---------------------------------------------------------------------------
puts "creating supplier 23"
# user_supplier_spain_23
user_supplier_country_23 = "Portugal"
user_supplier_name_23 = "TelaVanguarda Algarve"
user_supplier_address_23 = "Sitio Do Farrobo. 184A, 8150-032 São Brás de Alportel, Portugal"
user_supplier_description_23 = "TelaVanguarda Algarve, tucked away in the serene São Brás de Alportel region of Portugal's Algarve, offers a wide array of textiles. At an average price point, it presents an excellent choice for creators looking for quality materials that won't break the bank. Sustainability is a priority here, earning a commendable rating of 4. This means that your artistic pursuits can harmonize with eco-conscious values. While specific material details are not provided, you can trust TelaVanguarda Algarve to deliver a diverse selection of fabrics in this tranquil part of Portugal.

"
user_supplier_price_23 = "€€"
user_supplier_sus_23 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_23
)

# ---------------------------------------------------------------------------
puts "creating supplier 24"
# user_supplier_spain_24
user_supplier_country_24 = "Portugal"
user_supplier_name_24 = "Têxteis Costura Lusitana"
user_supplier_address_24 = "Rua da Eira Cimeira n.50, 6120-230, Portugal"
user_supplier_description_24 = "Têxteis Costura Lusitana, a renowned textile supplier located in Portugal, is synonymous with quality fabrics. With textiles available at an average price, it offers a well-balanced option for creators who appreciate both quality and affordability. Sustainability is of paramount importance, boasting a solid rating of 4. This means that your creative projects can align with eco-conscious principles. While specific material details are not provided, you can rely on Têxteis Costura Lusitana for a diverse range of textiles that meet your artistic requirements, regardless of where you are in Portugal.

"
user_supplier_price_24 = "€€"
user_supplier_sus_24 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_24
)

# ---------------------------------------------------------------------------
puts "creating supplier 25"
# user_supplier_spain_25
user_supplier_country_25 = "Portugal"
user_supplier_name_25 = "ModaArteTêxtil Braga"
user_supplier_address_25 = "Santuário do Sameiro, Av. Nossa Sra. do Sameiro 44, 4715-616 Braga, Portugal"
user_supplier_description_25 = "ModaArteTêxtil Braga, based in the charming city of Braga, Portugal, specializes in premium fabrics. These fabrics come at a premium price, reflecting their exceptional quality. Sustainability remains a priority with a noteworthy rating of 4, ensuring that your artistic choices are aligned with eco-conscious values. Although specific material details are not provided, you can expect ModaArteTêxtil Braga, located near the Santuário do Sameiro, to offer a premium selection of fabrics that cater to the creative aspirations of those in Braga.

"
user_supplier_price_25 = "€"
user_supplier_sus_25 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_25
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 26 and beyond, replacing "25" with the desired number.
puts "creating supplier 26"
# user_supplier_spain_26
user_supplier_country_26 = "Portugal"
user_supplier_name_26 = "Têxteis do Douro"
user_supplier_address_26 = "R. Urrana, 4910-508 Vila Praia de Âncora, Portugal"
user_supplier_description_26 = "Têxteis do Douro, situated in the coastal town of Vila Praia de Âncora, Portugal, specializes in premium fabrics. These fabrics are available at a premium price, reflecting their superior quality. Sustainability remains a priority, with a notable rating of 4, ensuring that your creative endeavors adhere to eco-conscious principles. While specific material details are not provided, you can trust Têxteis do Douro to offer a premium selection of textiles that cater to the creative needs of this picturesque coastal region.

"
user_supplier_price_26 = "€"
user_supplier_sus_26 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_26
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 27 and beyond, replacing "26" with the desired number.
puts "creating supplier 27"
# user_supplier_spain_27
user_supplier_country_27 = "Portugal"
user_supplier_name_27 = "Lisbon Weaving Excellence"
user_supplier_address_27 = "R. Conceição Fernandes S/N, 4434-502 Vila Nova de Gaia, Portugal"
user_supplier_description_27 = "Lisbon Weaving Excellence, conveniently located in Vila Nova de Gaia, Portugal, offers fabrics at an average price point. This practical pricing makes it an attractive choice for creators in the region. Sustainability remains a consideration, with a solid rating of 3, providing responsible material options. Specific material details are not provided, but you can count on Lisbon Weaving Excellence to supply a diverse range of textiles that align with your artistic vision in Vila Nova de Gaia.

"
user_supplier_price_27 = "€"
user_supplier_sus_27 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_27
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 28 and beyond, replacing "27" with the desired number.
puts "creating supplier 28"
# user_supplier_spain_28
user_supplier_country_28 = "Portugal"
user_supplier_name_28 = "Porto Fabrics"
user_supplier_address_28 = "R. Mte. Guilherme Camarinha 59, 4200-537 Porto, Portugal"
user_supplier_description_28 = "Porto Fabrics, established in the vibrant city of Porto, Portugal, is a reliable supplier of textiles. These textiles are available at an average price, offering an excellent balance of quality and affordability. Sustainability is a consideration, with a rating of 3, ensuring eco-conscious choices for creators in the area. While specific material details are not provided, you can trust Porto Fabrics to offer a diverse selection of textiles to meet your artistic needs in the historic city of Porto.

"
user_supplier_price_28 = "€"
user_supplier_sus_28 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_28
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 29 and beyond, replacing "28" with the desired number.

# C. - MOROCCO SUPPLIERS -------------------------------------
puts "creating supplier 29"
# user_supplier_spain_29
user_supplier_country_29 = "Morocco"
user_supplier_name_29 = "Moroccan Textile Innovators Ltd."
user_supplier_address_29 = Faker::Address.street_address,
user_supplier_description_29 = "Moroccan Textile Innovators Ltd., based in Morocco, is a reputable supplier offering fabrics at an average price point. Sustainability is a key focus, with a commendable rating of 4, ensuring responsible choices for creators in Morocco. While specific address details are not provided, you can rely on Moroccan Textile Innovators Ltd. to deliver a diverse range of textiles, catering to your artistic requirements in Morocco.

"
user_supplier_price_29 = "€€"
user_supplier_sus_29 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_29
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 30 and beyond, replacing "29" with the desired number.
puts "creating supplier 30"
# user_supplier_spain_30
user_supplier_country_30 = "Morocco"
user_supplier_name_30 = "Marrakech Fashion Weavers"
user_supplier_address_30 = Faker::Address.street_address,
user_supplier_description_30 = "Marrakech Fashion Weavers, located in Morocco, specializes in fabrics at an average price point. Sustainability is a priority with a noteworthy rating of 4, offering a harmonious blend of affordability and eco-consciousness. While specific address details are not provided, you can expect Marrakech Fashion Weavers to provide a wide range of textiles to meet your creative needs in Morocco.
"
user_supplier_price_30 = "€€"
user_supplier_sus_30 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_30
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 31 and beyond, replacing "30" with the desired number.
puts "creating supplier 31"
# user_supplier_spain_31
user_supplier_country_31 = "Morocco"
user_supplier_name_31 = "Agadir Innovation Textiles"
user_supplier_address_31 = Faker::Address.street_address
user_supplier_description_31 = "Agadir Innovation Textiles, located in the vibrant region of Agadir, Morocco, offers fabrics at an affordable price point. Sustainability is a priority here, with a commendable rating of 4, ensuring eco-conscious choices for creators in the area. While specific address details are not provided, you can rely on Agadir Innovation Textiles to deliver a diverse range of textiles that cater to your artistic requirements in Agadir.

"
user_supplier_price_31 = "€"
user_supplier_sus_31 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_31
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 32 and beyond, replacing "31" with the desired number.
puts "creating supplier 32"
# user_supplier_spain_32
user_supplier_country_32 = "Morocco"
user_supplier_name_32 = "Tangier Creative Fabrics"
user_supplier_address_32 = Faker::Address.street_address
user_supplier_description_32 = "Tangier Creative Fabrics, situated in the bustling city of Tangier, Morocco, provides fabrics at an average price point, making it an attractive choice for creators seeking a balance between quality and affordability. Sustainability remains a consideration, with a rating of 3, offering responsible material options. While specific address details are not provided, you can trust Tangier Creative Fabrics to offer a wide range of textiles to meet your creative needs in Tangier.

"
user_supplier_price_32 = "€"
user_supplier_sus_32 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_32
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 33 and beyond, replacing "32" with the desired number.
puts "creating supplier 33"
# D. - ITALY SUPPLIERS ------------------------------------------------


# user_supplier_spain_33
user_supplier_country_33 = "Italy"
user_supplier_name_33 = "Venetian Fabrics"
user_supplier_address_33 = Faker::Address.street_address
user_supplier_description_33 = "Venetian Fabrics, based in the enchanting city of Venice, Italy, specializes in premium fabrics. These fabrics are available at a premium price, reflecting their exceptional quality. Sustainability takes center stage with a remarkable rating of 5, ensuring that your creative endeavors align with responsible choices. While specific address details are not provided, you can count on Venetian Fabrics to provide a premium selection of textiles that cater to the artistic aspirations of Venice.

"
user_supplier_price_33 = "€€€"
user_supplier_sus_33 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_33
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 34 and beyond, replacing "33" with the desired number.
puts "creating supplier 34"
# user_supplier_spain_34
user_supplier_country_34 = "Italy"
user_supplier_name_34 = "Artisanal Fabrics of Rome"
user_supplier_address_34 = Faker::Address.street_address
user_supplier_description_34 = "Artisanal Fabrics of Rome, nestled in the historic capital of Italy, offers premium fabrics at a premium price. Sustainability is a top priority here, boasting a rating of 5, ensuring that your artistic choices are aligned with eco-conscious values. While specific address details are not provided, you can trust Artisanal Fabrics of Rome to offer a premium selection of textiles that cater to the creative needs of Rome.

"
user_supplier_price_34 = "€€€"
user_supplier_sus_34 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_34
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 35 and beyond, replacing "34" with the desired number.
puts "creating supplier 35"
# user_supplier_spain_35
user_supplier_country_35 = "Italy"
user_supplier_name_35 = "Sicilian Silk Elegance"
user_supplier_address_35 = Faker::Address.street_address
user_supplier_description_35 = "Sicilian Silk Elegance, situated in the picturesque island of Sicily, Italy, specializes in premium fabrics. These fabrics come at a premium price, reflecting their exceptional quality and the exquisite craftsmanship of the region. Sustainability remains paramount, with a remarkable rating of 5, ensuring that your artistic creations align with responsible choices. While specific address details are not provided, you can expect Sicilian Silk Elegance to offer a premium selection of textiles that capture the elegance of Sicily.

"
user_supplier_price_35 = "€€€"
user_supplier_sus_35 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_35
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 36 and beyond, replacing "35" with the desired number.
puts "creating supplier 36"
# user_supplier_spain_36
user_supplier_country_36 = "Italy"
user_supplier_name_36 = "Milanese Textile Excellence"
user_supplier_address_36 = Faker::Address.street_address
user_supplier_description_36 = "Milanese Textile Excellence, located in the fashion-forward city of Milan, Italy, offers fabrics at an average price point, striking a balance between quality and cost-effectiveness. Sustainability is a consideration, with a rating of 4, providing responsible material options for creators in the area. While specific address details are not provided, you can rely on Milanese Textile Excellence to supply a diverse range of textiles to meet your artistic needs in Milan.

"
user_supplier_price_36 = "€€"
user_supplier_sus_36 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_36
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 37 and beyond, replacing "36" with the desired number.

# E. - EGYPT SUPPLIERS ----------
puts "creating supplier 37"
# user_supplier_spain_37
user_supplier_country_37 = "Egypt"
user_supplier_name_37 = "Luxor Fabrics"
user_supplier_address_37 = Faker::Address.street_address
user_supplier_description_37 = "Luxor Fabrics, situated in the historic city of Luxor, Egypt, provides fabrics at an average price point, making it a practical choice for creators. Sustainability remains a priority with a notable rating of 4, ensuring eco-conscious choices for creators in Luxor. While specific address details are not provided, you can trust Luxor Fabrics to offer a diverse range of textiles that cater to your artistic requirements in Luxor.

"
user_supplier_price_37 = "€€"
user_supplier_sus_37 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_37
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 38 and beyond, replacing "37" with the desired number.
puts "creating supplier 38"
# user_supplier_spain_38
user_supplier_country_38 = "Egypt"
user_supplier_name_38 = "Artisanal Fabrics of Alexandria"
user_supplier_address_38 = Faker::Address.street_address,
user_supplier_description_38 = "Artisanal Fabrics of Alexandria, located in the coastal city of Alexandria, Egypt, offers fabrics at an affordable price point. Sustainability is considered, with a rating of 3, providing responsible material options for creators in the area. While specific address details are not provided, you can rely on Artisanal Fabrics of Alexandria to deliver a variety of textiles that align with your artistic vision in Alexandria.

"
user_supplier_price_38 = "€"
user_supplier_sus_38 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_38
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 39 and beyond, replacing "38" with the desired number.
puts "creating supplier 39"
# user_supplier_spain_39
user_supplier_country_39 = "Egypt"
user_supplier_name_39 = "Elegant Threads of Giza"
user_supplier_address_39 = Faker::Address.street_address,
user_supplier_description_39 = "Elegant Threads of Giza, based in the historical region of Giza, Egypt, offers fabrics at an affordable price, making it a practical choice for creators. Sustainability remains a consideration, with a rating of 3, providing responsible material options. While specific address details are not provided, you can trust Elegant Threads of Giza to offer a range of textiles that cater to your creative needs in Giza.

"
user_supplier_price_39 = "€"
user_supplier_sus_39 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_39
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 40 and beyond, replacing "39" with the desired number.
puts "creating supplier 40"
# user_supplier_spain_40
user_supplier_country_40 = "Egypt"
user_supplier_name_40 = "Egyptian Sewing Artisans"
user_supplier_address_40 = Faker::Address.street_address,
user_supplier_description_40 = "Egyptian Sewing Artisans, located in the heart of Egypt, offers fabrics at an affordable price point, ensuring cost-effective choices for creators. Sustainability is considered, with a rating of 3, providing responsible material options. While specific address details are not provided, you can rely on Egyptian Sewing Artisans to deliver a variety of textiles that meet your artistic requirements in Egypt.
"
user_supplier_price_40 = "€"
user_supplier_sus_40 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_40
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 41 and beyond, replacing "40" with the desired number.


# F. - TURKEY SUPPLIERS ---------------------------------------

puts "creating supplier 41"
# user_supplier_spain_41
user_supplier_country_41 = "Turkey"
user_supplier_name_41 = "Anatolian Textile Creations"
user_supplier_address_41 = Faker::Address.street_address,
user_supplier_description_41 = "Anatolian Textile Creations, situated in the historic region of Anatolia, Turkey, offers textiles at an average price point. Sustainability is a priority with a notable rating of 4, ensuring eco-conscious choices for creators. While specific address details are not provided, you can count on Anatolian Textile Creations to provide a diverse range of textiles that cater to your artistic requirements in Anatolia.

"
user_supplier_price_41 = "€€"
user_supplier_sus_41 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_41
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 42 and beyond, replacing "41" with the desired number.
puts "creating supplier 42"
# user_supplier_spain_42
user_supplier_country_42 = "Turkey"
user_supplier_name_42 = "Mediterranean Innovation Textiles"
user_supplier_address_42 = Faker::Address.street_address,
user_supplier_description_42 = "Mediterranean Innovation Textiles, located in the picturesque Mediterranean region of Turkey, offers textiles at an average price point. Sustainability is considered, with a rating of 3, providing responsible material options for creators in the area. While specific address details are not provided, you can trust Mediterranean Innovation Textiles to offer a variety of textiles that meet your creative needs in the Mediterranean region.

"
user_supplier_price_42 = "€€"
user_supplier_sus_42 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_42
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 43 and beyond, replacing "42" with the desired number.
puts "creating supplier 43"
# user_supplier_spain_43
user_supplier_country_43 = "Turkey"
user_supplier_name_43 = "Ankara Silk Craftsmen"
user_supplier_address_43 = Faker::Address.street_address,
user_supplier_description_43 = "Ankara Silk Craftsmen, based in the capital city of Ankara, Turkey, provides textiles at an affordable price point, making it a practical choice for creators. Sustainability is a consideration, with a rating of 3, providing responsible material options. While specific address details are not provided, you can rely on Ankara Silk Craftsmen to deliver a range of textiles that align with your artistic vision in Ankara.

"
user_supplier_price_43 = "€"
user_supplier_sus_43 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_43
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 44 and beyond, replacing "43" with the desired number.

puts "creating supplier 44"
# user_supplier_spain_44
user_supplier_country_44 = "Turkey"
user_supplier_name_44 = "Turkish Textile Artisans Ltd."
user_supplier_address_44 = Faker::Address.street_address,
user_supplier_description_44 = "Turkish Textile Artisans Ltd., located in Turkey, offers textiles at an affordable price, ensuring cost-effective choices for creators. Sustainability remains a consideration, with a rating of 3, providing responsible material options. While specific address details are not provided, you can trust Turkish Textile Artisans Ltd. to offer a variety of textiles that cater to your creative needs in Turkey.

"
user_supplier_price_44 = "€"
user_supplier_sus_44 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_44
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 45 and beyond, replacing "44" with the desired number.

# G. - BANGLADESH SUPPLIERS -----------------------------------------

puts "creating supplier 45"
# user_supplier_spain_45
user_supplier_country_45 = "Bangladesh"
user_supplier_name_45 = "Bangladesh Textile Innovations Ltd."
user_supplier_address_45 = Faker::Address.street_address,
user_supplier_description_45 = "Bangladesh Textile Innovations Ltd., situated in Bangladesh, provides textiles at an affordable price point, making it a practical choice for creators. Sustainability is considered, with a rating of 3, offering responsible material options. While specific address details are not provided, you can count on Bangladesh Textile Innovations Ltd. to offer a range of textiles that meet your creative requirements in Bangladesh.

"
user_supplier_price_45 = "€"
user_supplier_sus_45 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_45
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 46 and beyond, replacing "45" with the desired number.
puts "creating supplier 46"
# user_supplier_spain_46
user_supplier_country_46 = "Bangladesh"
user_supplier_name_46 = "Creative Textiles Bangladesh"
user_supplier_address_46 = Faker::Address.street_address,
user_supplier_description_46 = "Creative Textiles Bangladesh, based in Bangladesh, offers textiles at an affordable price, ensuring cost-effective choices for creators. Sustainability remains a consideration, with a rating of 3, providing responsible material options. While specific address details are not provided, you can rely on Creative Textiles Bangladesh to deliver a variety of textiles that align with your artistic vision in Bangladesh.

"
user_supplier_price_46 = "€"
user_supplier_sus_46 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_46
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 47 and beyond, replacing "46" with the desired number.
puts "creating supplier 47"
# user_supplier_spain_47
user_supplier_country_47 = "Bangladesh"
user_supplier_name_47 = "Sylhet Creative Fabrics"
user_supplier_address_47 = Faker::Address.street_address,
user_supplier_description_47 = "Sylhet Creative Fabrics, located in the picturesque region of Sylhet, Bangladesh, offers textiles at an affordable price point, making it an attractive choice for creators. Sustainability is rated at 2, indicating some eco-conscious efforts. While specific address details are not provided, you can trust Sylhet Creative Fabrics to provide a range of textiles that cater to your creative needs in Sylhet.

"
user_supplier_price_47 = "€"
user_supplier_sus_47 = 2

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_47
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 48 and beyond, replacing "47" with the desired number.
puts "creating supplier 48"
# user_supplier_spain_48
user_supplier_country_48 = "Bangladesh"
user_supplier_name_48 = "Sustainable Fashion in Comilla"
user_supplier_address_48 = Faker::Address.street_address,
user_supplier_description_48 = "Sustainable Fashion in Comilla, situated in the city of Comilla, Bangladesh, provides textiles at an affordable price point. Sustainability is rated at 2, indicating efforts toward responsible choices. While specific address details are not provided, you can count on Sustainable Fashion in Comilla to offer a variety of textiles that meet your artistic requirements in Comilla.

"
user_supplier_price_48 = "€"
user_supplier_sus_48 = 2

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_48
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 49 and beyond, replacing "48" with the desired number.

# H. - CHINA SUPPLIERS ----------
puts "creating supplier 49"
# user_supplier_spain_49
user_supplier_country_49 = "China"
user_supplier_name_49 = "Guangzhou Crafted Textiles"
user_supplier_address_49 = Faker::Address.street_address,
user_supplier_description_49 = "Guangzhou Crafted Textiles, located in the bustling city of Guangzhou, China, offers textiles at an average price point, striking a balance between quality and cost-effectiveness. Sustainability is a priority with a notable rating of 4, ensuring eco-conscious choices for creators. While specific address details are not provided, you can rely on Guangzhou Crafted Textiles to supply a diverse range of textiles to meet your artistic needs in Guangzhou.

"
user_supplier_price_49 = "€€"
user_supplier_sus_49 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_49
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 50 and beyond, replacing "49" with the desired number.
puts "creating supplier 50"
# user_supplier_spain_50
user_supplier_country_50 = "China"
user_supplier_name_50 = "Beijing Fabrics"
user_supplier_address_50 = Faker::Address.street_address,
user_supplier_description_50 = "Beijing Fabrics, based in the vibrant capital city of Beijing, China, offers textiles at an affordable price point, making it a practical choice for creators. Sustainability is considered, with a rating of 3, providing responsible material options. While specific address details are not provided, you can trust Beijing Fabrics to deliver a variety of textiles that align with your artistic vision in Beijing.
"
user_supplier_price_50 = "€"
user_supplier_sus_50 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_50
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 51 and beyond, replacing "50" with the desired number.
puts "creating supplier 51"
# user_supplier_spain_51
user_supplier_country_51 = "China"
user_supplier_name_51 = "Hangzhou Textile Art"
user_supplier_address_51 = Faker::Address.street_address,
user_supplier_description_51 = "Hangzhou Textile Art, located in the picturesque city of Hangzhou, China, offers textiles at an affordable price point, making it an accessible choice for creators. Sustainability is a consideration, with a rating of 2, indicating some eco-conscious efforts. While specific address details are not provided, you can trust Hangzhou Textile Art to provide a variety of textiles that cater to your creative needs in Hangzhou.

"
user_supplier_price_51 = "€"
user_supplier_sus_51 = 2

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_51
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 52 and beyond, replacing "51" with the desired number.
puts "creating supplier 52"
# user_supplier_spain_52
user_supplier_country_52 = "China"
user_supplier_name_52 = "Pearl River Textiles"
user_supplier_address_52 = Faker::Address.street_address,
user_supplier_description_52 = "Pearl River Textiles, situated along the beautiful Pearl River in China, offers textiles at a premium price point, emphasizing quality and luxury. Sustainability is rated at 2, indicating a basic awareness of eco-conscious practices. While specific address details are not provided, you can rely on Pearl River Textiles for high-quality textiles that meet your creative standards along the Pearl River.

"
user_supplier_price_52 = "€"
user_supplier_sus_52 = 2

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_52
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 53 and beyond, replacing "52" with the desired number.
puts "creating supplier 53"
# I. - FRANCE SUPPLIERS ----------


# user_supplier_spain_53
user_supplier_country_53 = "France"
user_supplier_name_53 = "Lyon Fabrics"
user_supplier_address_53 = Faker::Address.street_address,
user_supplier_description_53 = "Lyon Fabrics, based in the historic city of Lyon, France, provides textiles at a premium price point, ensuring top-notch quality and luxury for creators. Sustainability is a top priority with a notable rating of 5, guaranteeing environmentally responsible material options. While specific address details are not provided, you can count on Lyon Fabrics to deliver exquisite textiles that align with your artistic vision in Lyon.

"
user_supplier_price_53 = "€€€"
user_supplier_sus_53 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_53
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 54 and beyond, replacing "53" with the desired number.
puts "creating supplier 54"
# user_supplier_spain_54
user_supplier_country_54 = "France"
user_supplier_name_54 = "Riviera Textiles"
user_supplier_address_54 = Faker::Address.street_address,
user_supplier_description_54 = "Riviera Textiles, located along the stunning French Riviera, offers textiles at a premium price point, emphasizing luxury and sophistication. Sustainability is rated at 5, reflecting a strong commitment to eco-conscious choices. While specific address details are not provided, you can trust Riviera Textiles to provide high-end textiles that meet your artistic requirements along the French Riviera.

"
user_supplier_price_54 = "€€€"
user_supplier_sus_54 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_54
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 55 and beyond, replacing "54" with the desired number.
puts "creating supplier 55"
# user_supplier_spain_55
user_supplier_country_55 = "France"
user_supplier_name_55 = "Alsace Silk Studios"
user_supplier_address_55 = Faker::Address.street_address,
user_supplier_description_55 = "Alsace Silk Studios, based in the charming region of Alsace, France, offers textiles at a premium price point, ensuring top-tier quality and elegance for creators. Sustainability is a top priority with a notable rating of 5, guaranteeing eco-conscious material options. While specific address details are not provided, you can rely on Alsace Silk Studios to deliver exquisite textiles that align with your artistic vision in Alsace.

"
user_supplier_price_55 = "€€€"
user_supplier_sus_55 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_55
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 56 and beyond, replacing "55" with the desired number.
puts "creating supplier 56"
# user_supplier_spain_56
user_supplier_country_56 = "France"
user_supplier_name_56 = "French LoomCraft"
user_supplier_address_56 = Faker::Address.street_address,
user_supplier_description_56 = "French LoomCraft, situated in the heart of France, offers textiles at an average price point, striking a balance between quality and affordability. Sustainability is considered, with a rating of 4, providing responsible material options. While specific address details are not provided, you can trust French LoomCraft to supply a variety of textiles that cater to your creative needs in France.

"
user_supplier_price_56 = "€€"
user_supplier_sus_56 = 4

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_56
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 57 and beyond, replacing "56" with the desired number.

# J. - PERU SUPPLIERS ----------
puts "creating supplier 57"
# user_supplier_spain_57
user_supplier_country_57 = "Peru"
user_supplier_name_57 = "Puno Cashmere Crafts"
user_supplier_address_57 = Faker::Address.street_address,
user_supplier_description_57 = "Puno Cashmere Crafts, located in the picturesque region of Puno, Peru, provides textiles at a premium price point, ensuring top-tier quality and luxury for creators. Sustainability is a top priority with a notable rating of 5, guaranteeing environmentally responsible material options. While specific address details are not provided, you can count on Puno Cashmere Crafts to deliver exquisite textiles that align with your artistic vision in Puno.

"
user_supplier_price_57 = "€€€"
user_supplier_sus_57 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_57
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 58 and beyond, replacing "57" with the desired number.
puts "creating supplier 58"
# user_supplier_spain_58
user_supplier_country_58 = "Peru"
user_supplier_name_58 = "Cashmere Haven Peru"
user_supplier_address_58 = Faker::Address.street_address,
user_supplier_description_58 = "Cashmere Haven Peru, based in the beautiful landscapes of Peru, offers textiles at a premium price point, emphasizing quality and luxury. Sustainability is rated at 5, reflecting a strong commitment to eco-conscious choices. While specific address details are not provided, you can trust Cashmere Haven Peru to provide high-end textiles that meet your artistic requirements in Peru.

"
user_supplier_price_58 = "€€€"
user_supplier_sus_58 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_58
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 59 and beyond, replacing "58" with the desired number.
puts "creating supplier 59"
# user_supplier_spain_59
user_supplier_country_59 = "Peru"
user_supplier_name_59 = "Cashmere Sewing Artisans"
user_supplier_address_59 = Faker::Address.street_address,
user_supplier_description_59 = "Cashmere Sewing Artisans, situated in the scenic regions of Peru, offers textiles at a premium price point, ensuring top-tier quality and elegance for creators. Sustainability is a top priority with a notable rating of 5, guaranteeing eco-conscious material options. While specific address details are not provided, you can rely on Cashmere Sewing Artisans to deliver exquisite textiles that align with your artistic vision in Peru.

"
user_supplier_price_59 = "€€€"
user_supplier_sus_59 = 5

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_59
)

# ---------------------------------------------------------------------------
# Continue the pattern for numbers 60 and beyond, replacing "59" with the desired number.
puts "creating supplier 60"
# user_supplier_spain_60
user_supplier_country_60 = "Peru"
user_supplier_name_60 = "Sustainable Cashmere Couture"
user_supplier_address_60 = Faker::Address.street_address
user_supplier_description_60 = "Sustainable Cashmere Couture, based in the captivating landscapes of Peru, provides textiles at an affordable price point, making it a practical choice for creators. Sustainability is considered, with a rating of 3, offering responsible material options. While specific address details are not provided, you can trust Sustainable Cashmere Couture to supply a variety of textiles that cater to your creative needs in Peru."
user_supplier_price_60 = "€"
user_supplier_sus_60 = 3

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
  minimum_quantity: rand(10..300).round(-1),
  user: user_supplier_60
)

# ---------------------------------------------------------------------------



#-------------------------DONE SUPPLIERS--------------------------------------------------------------

#---------------------MATERIALS-----------------------------------------



materials = [
  "cotton", "polyester", "cashmere", "linen", "Silk", "Wool",
  "Leather", "Denim", "Velvet", "Nylon", "Spandex", "Rayon",
  "Satin", "Chiffon", "Tulle", "Fleece", "Tweed", "Corduroy",
  "Lace", "Suede", "Jacquard", "Chambray", "Organza"
]

materials.each do |material_name|
  Material.create!(name: material_name)
end

Supplier.all.each do |supplier|
  selected_materials = Material.all.sample(rand(1..20))

  selected_materials.each do |material|
    SupplierMaterial.find_or_create_by!(material: material, supplier: supplier)
  end
end






# favorite
puts "favorite 1 - isa"
Favorite.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.first.id,
)

puts "favorite 2"
Favorite.create(
  brand_id: Brand.first.id,
  supplier_id: Supplier.second.id,
)

puts "favorite 3"
Favorite.create(
  brand_id: Brand.second.id,
  supplier_id: Supplier.second.id,
)

puts "Favorites have been created"




# seeds for Graphs

# project 1
puts "project 1.."
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
puts "project 2.."
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
puts "project 3.."
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
puts "project 4.."
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
puts "project 5.."
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


# 8 users for suppliers
puts "user 1-suppliers"
user_5 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "user 2-suppliers"
user_6 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "user 3-suppliers"
user_7 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "user 4-suppliers"
user_8 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "user 5-suppliers"
user_9 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "user 6-suppliers"
user_10 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "user 7-suppliers"
user_11 = User.create(
  email: Faker::Internet.email,
  password: "123456",
  user_type: "supplier",
)

puts "users for suppliers have been created"


# 8 suppliers
puts "suppliers 1"
Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(300..750).round(-1),
  user: user_5
)

puts "suppliers 2"
Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(300..750).round(-1),
  user: user_6
)

puts "suppliers 3"
Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(300..750).round(-1),
  user: user_7
)

puts "suppliers 4"
Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(300..750).round(-1),
  user: user_8
)

puts "suppliers 5"
Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(300..750).round(-1),
  user: user_9
)

puts "suppliers 6"
Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: rand(300..750).round(-1),
  user: user_10
)

puts "suppliers 7"
Supplier.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  description: Faker::Lorem.paragraph(sentence_count: 10),
  country: Faker::Address.country,
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.cell_phone,
  price_rating: ["€", "€€", "€€€"].sample,
  sustainability_rating: rand(1..5),
  minimum_quantity: 750,
  user: user_11
)


puts "Suppliers have been created"

# ---------------------------------------------------------------------------
