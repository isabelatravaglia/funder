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
admin = User.create(email: "admin@funder.com", first_name: "Admin", last_name: "Admin", photo: "a", role: "admin", degree: "admin", nationality: "admin", area: "admin", date_of_birth: Date.new(2019,1,1), gender: "female", country: "Portugual", password: "123456")

puts "Creating institutions"
10.times do
  Institution.create(name: Faker::University.name, city: Faker::Address.city, country: Faker::Address.country, ranking: rand(1..50), user: admin )
end

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
  start_date = Date.new(rand(2019..2021), rand(1..12), rand(1..30))
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
