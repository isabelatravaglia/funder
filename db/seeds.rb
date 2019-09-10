puts "Destroying records"
User.destroy_all
Institution.destroy_all
Area.destroy_all
Favorite.destroy_all
Scholarship.destroy_all
Alert.destroy_all
Notification.destroy_all
TYPES = ["Research of ", "PhD of "]

puts "Creating user admin"
url_admin = "https://res.cloudinary.com/veronicabraga/image/upload/v1568108987/Funder/christopher-campbell-rDEOVtE7vOs-unsplash_hj9qpu.jpg"
admin = User.new(email: "mariana@gmail.com", first_name: "Mariana", last_name: "Ferreira", role: "admin", degree: "Master", nationality: "Portuguese", area: "Economics", date_of_birth: Date.new(1989,4,15), gender: "female", country: "Portugal", password: "123456", admin: true)
admin.remote_photo_url = url_admin
admin.save



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

url_1 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567531878/areas_photos/asli-yilmaz-u1PX1Q26Kpo-unsplash_ftfous.jpg"
area_1 = Area.create(name: "Geography")
area_1.remote_photo_url = url_1
area_1.save

url_2 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567532989/areas_photos/mario-purisic-jG1z5o7NCq4-unsplash_mlpjpa.jpg"
area_2 = Area.create(name: "Anthropology")
area_2.remote_photo_url = url_2
area_2.save

url_3 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567532089/areas_photos/daniel-h-tong-xBeid9r1paU-unsplash_j6odbw.jpg"
area_3 = Area.create(name: "History")
area_3.remote_photo_url = url_3
area_3.save

url_4 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567533065/areas_photos/alexandre-debieve-FO7JIlwjOtU-unsplash_u6mqdj.jpg"
area_4 = Area.create(name: "ICT")
area_4.remote_photo_url = url_4
area_4.save

url_5 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567533775/areas_photos/psychology_rlrzto.png"
area_5 = Area.create(name: "Psychology")
area_5.remote_photo_url = url_5
area_5.save

url_6 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567533041/areas_photos/adeolu-eletu-unRkg2jH1j0-unsplash_ov9k7j.jpg"
area_6 = Area.create(name: "Management")
area_6.remote_photo_url = url_6
area_6.save

url_7 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567532966/areas_photos/m-b-m-ZzOa5G8hSPI-unsplash_vfswmm.jpg"
area_7 = Area.create(name: "Economics")
area_7.remote_photo_url = url_7
area_7.save

url_8 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567532146/areas_photos/sai-kiran-anagani-5Ntkpxqt54Y-unsplash_dmsobv.jpg"
area_8 = Area.create(name: "Computer Science")
area_8.remote_photo_url = url_8
area_8.save

url_9 = "https://res.cloudinary.com/ddec9kvgc/image/upload/v1567532956/areas_photos/glenn-carstens-peters-npxXWgQ33ZQ-unsplash_a2uiii.jpg"
area_9 = Area.create(name: "Communication")
area_9.remote_photo_url = url_9
area_9.save


puts "Creating scholarships"
min_area = Area.first.id
max_area = Area.last.id
min_inst = Institution.first.id
max_inst = Institution.last.id

30.times do
  area = Area.find(rand(min_area..max_area))
  type = TYPES.sample

  if area.name == "Economics"
    description = "The breadth and depth of our expertise enables us to offer supervision in all major areas of economics and finance. The School has more than 40 research-active faculty working in a wide range of research areas, including macroeconomics, microeconomic theory and game theory, applied microeconomics, econometric theory, time series analysis, theoretical and empirical finance."
  elsif area.name == "Management"
    description = "We are actively engaged in conducting research on a wide range of relevant issues relating to leadership, ethics, organisation studies, human resource management and development, employment relations, sales management, advertising, operations research, organisational excellence, and corporate branding at this Operations and Systems Management."
  else
    description = "Scholarships support graduates who comply with the requirements to apply for PhD studies and wish to carry out research towards this degree. Research work may be carried out in any knowledge intensive environment, namely in collaboration with companies. The work programme may be entirely or partially carried out in a national institution (national or mixed scholarships, respectively), or in a foreign institution (overseas scholarships). For mixed scholarships, the period of the work programme that takes place in a foreign institution cannot exceed a total of two years. As a rule, scholarships are annual, and can be renewed for the number of moths for which they have been requested. No scholarships are granted for periods of less than three consecutive months or more than 48 months."

    # "Scholarship for #{type}#{area.name}"
  end

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
  f = Favorite.create!(user: admin, favorited_type:'Scholarship', favorited_id: Scholarship.find(rand(min_schol..max_schol)).id)
  puts f
end

puts "Creating alerts"
10.times do
  scholarship = Scholarship.find(rand(min_schol..max_schol))
  area = scholarship.area
  institution = scholarship.institution

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
Scholarship.all.each do |scholarship|
  scholarship.save
end

