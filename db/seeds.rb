puts "Destroying records"
User.destroy_all
Institution.destroy_all
Area.destroy_all
Scholarship.destroy_all
Favorite.destroy_all
Alert.destroy_all
Notification.destroy_all
TYPES = ["Research of ", "PHd of "]

puts "Creating user admin"
url_admin = "https://res.cloudinary.com/veronicabraga/image/upload/v1567519066/institutions/User%20avatar/photo-1507003211169-0a1dd7228f2d_a5w1nr.jpg"
admin = User.create(email: "admin@funder.com", first_name: "Admin", last_name: "Admin", photo: url_admin, role: "admin", degree: "admin", nationality: "admin", area: "admin", date_of_birth: Date.new(2019,1,1), gender: "female", country: "Portugual", password: "123456")

puts "Creating institutions"

url_1 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503775/institutions/university_of_toronto_1_1_b3shsz.jpg"
inst_1 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_1.remote_photo_url = url_1
inst_1.save

url_2 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503756/institutions/190426-ucla-measles-se-610p_2af8c7a37d7e423cacf6805c7cbc08f0.fit-760w_trohil.jpg"
inst_2 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_2.remote_photo_url = url_2
inst_2.save

url_3 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503736/institutions/FN-AI051_fn_uni_M_20190830130204_uceqnf.jpg"
inst_3 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_3.remote_photo_url = url_3
inst_3.save

url_4 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503719/institutions/0943b1554aafbb45a7f771d4a04cd34d02eb6b21cb7e469c73cc22dc8561dcd1_hgjvmv.jpg"
inst_4 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_4.remote_photo_url = url_4
inst_4.save

url_5 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503702/institutions/wide_fullhd_russia-moscow-lomonosov-msu_vhj3kk.jpg"
inst_5 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_5.remote_photo_url = url_5
inst_5.save

url_6 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503687/institutions/456071_7283734_universities_updates_jwpfmu.jpg"
inst_6 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_6.remote_photo_url = url_6
inst_6.save

url_7 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503674/institutions/national-university-of-ireland-galway-aula-maxima-quadrangle_z7a6ed.jpg"
inst_7 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_7.remote_photo_url = url_7
inst_7.save


url_8 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503662/institutions/colleges-universities-using-social-media_xwyat7.jpg"
inst_8 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_8.remote_photo_url = url_8
inst_8.save

url_9 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503653/institutions/https_3A_2F_2Fspecials-images.forbesimg.com_2Fdam_2Fimageserve_2F503064668_2F960x0_ehgvem.jpg"
inst_9 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_9.remote_photo_url = url_9
inst_9.save

url_10 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503647/institutions/Corpus-Christi-Oxford_u8ztdh.jpg"
inst_10 = Institution.new(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
inst_10.remote_photo_url = url_10
inst_10.save



puts "Creating areas"
Area.create(name: "Geography")
Area.create(name: "Anthropology")
Area.create(name: "History")
Area.create(name: "Linguistics and languages")
Area.create(name: "Philosophy")
Area.create(name: "Religion")
Area.create(name: "Economics")
Area.create(name: "Political science")
Area.create(name: "Psychology")
Area.create(name: "Sociology")
Area.create(name: "Agriculture")
Area.create(name: "Architecture and design")
Area.create(name: "Business")

puts "Creating scholarships"
min_area = Area.first.id
max_area = Area.last.id
min_inst = Institution.first.id
max_inst = Institution.last.id

30.times do
  area = Area.find(rand(min_area..max_area))
  type = TYPES.sample
  description = "Scholarship for #{type}#{area.name}"
  start_date = Date.new(rand(2019..2021), rand(1..12), rand(1..28))
  end_date = start_date + 60
  institution = Institution.find(rand(min_inst..max_inst))
  Scholarship.create(
    name: type + area.name,
    area: area,
    description: description,
    institution: institution,
    application_start_date: start_date,
    application_end_date: end_date,
    url: "https://www.#{institution.name.gsub(/\s+/, "").downcase}.com"
  )
end

min_schol = Scholarship.first.id
max_schol = Scholarship.last.id
puts "Creating favorites"
10.times do
  Favorite.create(user: admin, scholarship: Scholarship.find(rand(min_schol..max_schol)))
end

puts "Creating alerts"
10.times do
  area = Area.find(rand(min_area..max_area))
  institution = Institution.find(rand(min_inst..max_inst))

  name = "Alert for "
  Alert.create(
    name: "Scholarship for #{area.name} at #{institution.name}" ,
    description: "Scholarship for #{area.name} at #{institution.name}",
    area: area,
    institution: institution,
    user: admin,
  )
end

puts "Creating notifications"
min_alert = Alert.first.id
max_alert = Alert.last.id
5.times do
  Notification.create(alert: Alert.find(rand(min_alert..max_alert)), status: ["unread", "read"].sample)
end
