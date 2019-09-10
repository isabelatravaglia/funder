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
admin = User.new(email: "mariferr.1989@gmail.com", first_name: "Mariana", last_name: "Ferreira", role: "admin", degree: "Master", nationality: "Portuguese", area: "Economics", date_of_birth: Date.new(1989,4,15), gender: "female", country: "Portugal", password: "123456", admin: true)
admin.remote_photo_url = url_admin
admin.save



puts "Creating institutions"

url_1 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503775/institutions/university_of_toronto_1_1_b3shsz.jpg"
inst_1 = Institution.new(name: "University of Vienna", city: "Vienna", country: "Austria", ranking: rand(1..50), user: admin )
inst_1.remote_photo_url = url_1
inst_1.save

url_2 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503756/institutions/190426-ucla-measles-se-610p_2af8c7a37d7e423cacf6805c7cbc08f0.fit-760w_trohil.jpg"
inst_2 = Institution.new(name: "University of Debrecen", city: "Budapeste", country: "Hungary", ranking: rand(1..50), user: admin )
inst_2.remote_photo_url = url_2
inst_2.save

url_3 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503736/institutions/FN-AI051_fn_uni_M_20190830130204_uceqnf.jpg"
inst_3 = Institution.new(name: "University of Porto", city: "Porto", country: "Portugal", ranking: rand(1..50), user: admin )
inst_3.remote_photo_url = url_3
inst_3.save

url_4 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503719/institutions/0943b1554aafbb45a7f771d4a04cd34d02eb6b21cb7e469c73cc22dc8561dcd1_hgjvmv.jpg"
inst_4 = Institution.new(name: "Oslo University College", city: "Oslo", country: "Norway", ranking: rand(1..50), user: admin )
inst_4.remote_photo_url = url_4
inst_4.save

url_5 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503702/institutions/wide_fullhd_russia-moscow-lomonosov-msu_vhj3kk.jpg"
inst_5 = Institution.new(name: "ETH Zurich", city: "Zurich", country: "Switzerland", ranking: rand(1..50), user: admin )
inst_5.remote_photo_url = url_5
inst_5.save

url_6 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503687/institutions/456071_7283734_universities_updates_jwpfmu.jpg"
inst_6 = Institution.new(name: "University College Copenhagen", city: "Copenhagen", country: "Denmark", ranking: rand(1..50), user: admin )
inst_6.remote_photo_url = url_6
inst_6.save

url_7 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503674/institutions/national-university-of-ireland-galway-aula-maxima-quadrangle_z7a6ed.jpg"
inst_7 = Institution.new(name: "University of Warsaw", city: "Warsaw", country: "Poland", ranking: rand(1..50), user: admin )
inst_7.remote_photo_url = url_7
inst_7.save


url_8 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503662/institutions/colleges-universities-using-social-media_xwyat7.jpg"
inst_8 = Institution.new(name: "Trinity College", city: "Dublin", country: "Ireland", ranking: rand(1..50), user: admin )
inst_8.remote_photo_url = url_8
inst_8.save

url_9 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503653/institutions/https_3A_2F_2Fspecials-images.forbesimg.com_2Fdam_2Fimageserve_2F503064668_2F960x0_ehgvem.jpg"
inst_9 = Institution.new(name: "University of Lisbon", city: "Lisbon", country: "Portugal", ranking: rand(1..50), user: admin )
inst_9.remote_photo_url = url_9
inst_9.save

url_10 = "https://res.cloudinary.com/veronicabraga/image/upload/v1567503647/institutions/Corpus-Christi-Oxford_u8ztdh.jpg"
inst_10 = Institution.new(name: "University of Ghent", city: "Ghent", country: "Belgium", ranking: rand(1..50), user: admin )
inst_10.remote_photo_url = url_10
inst_10.save

url_11 = "https://res.cloudinary.com/veronicabraga/image/upload/v1568121807/Funder/daad_haupthaus_mit_fahnen_jcw5ky.jpg"
inst_11 = Institution.new(name: "DAAD", city: "Berlin", country: "Germany", ranking: rand(1..50), user: admin )
inst_11.remote_photo_url = url_11
inst_11.save

url_12 = "https://res.cloudinary.com/veronicabraga/image/upload/v1568132152/Funder/london_school_of_economics_ybb4ks.jpg"
inst_12 = Institution.new(name: "LSE - The London School", city: "London", country: "England", ranking: rand(1..50), user: admin )
inst_12.remote_photo_url = url_12
inst_12.save

url_13 = "https://res.cloudinary.com/veronicabraga/image/upload/v1568132023/Funder/methode_2Fsundaytimes_2Fprod_2Fweb_2Fbin_2F5d7fa3d8-2f79-11e8-8818-e8348c6ff993_tbo9sm.jpg"
inst_13 = Institution.new(name: "Henley Business School", city: "Henley-on-Thames", country: "England", ranking: rand(1..50), user: admin )
inst_13.remote_photo_url = url_13
inst_13.save

url_14 = "https://res.cloudinary.com/veronicabraga/image/upload/v1568133827/Funder/cambridge-university-_hcaoa6.jpg"
inst_14 = Institution.new(name: "University of Cambridge", city: "Cambridge", country: "England", ranking: rand(1..50), user: admin )
inst_14.remote_photo_url = url_14
inst_14.save

url_15 = "https://res.cloudinary.com/veronicabraga/image/upload/v1568134955/Funder/385E-09C4-49D2-A37D-1575_oxjrwj.jpg"
inst_15 = Institution.new(name: "Aston University", city: "Birmingham", country: "England", ranking: rand(1..50), user: admin )
inst_15.remote_photo_url = url_15
inst_15.save

url_16 = "https://res.cloudinary.com/veronicabraga/image/upload/v1568136586/Funder/Universita-Cattolica-banner_tcm76-955503_woch3f.jpg"
inst_16 = Institution.new(name: "Defap- Graduate School in Public Economics", city: "Milano", country: "Italy", ranking: rand(1..50), user: admin )
inst_16.remote_photo_url = url_16
inst_16.save



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


area_economics = Area.find_by(name: "Economics")

sch_1 = Scholarship.create(name: "Heinrich Böll Foundation Scholarships", area: area_economics, description: "The Foundation, which maintains close ties with the German Green Party, awards scholarships for German and international doctoral candidates from any discipline. Candidates are tomorrow's experts and leaders. They come from any country and approve of green values. They are prepared to take responsibility and advocate the green Foundation's ideals in an international context: the concepts of sustainability, self-determination, equal opportunities and justice as well as the encouragement of human rights and the promotion of a democratic culture.", institution: Institution.find_by(name: "DAAD"), application_start_date: Date.new(2019,10,12), application_end_date: Date.new(2019,12,11), url: "https://www.daad.de/deutschland/stipendium/datenbank/en/21148-scholarship-database/?status=&origin=&subjectGrps=&daad=&intention=&q=phd&page=2&detail=10000113" )

sch_2 = Scholarship.create(name: "LSE PhD Studentships", area: area_economics, description: "LSE will be offering around 100 major studentships to new PhD students in the form of LSE PhD Studentships and LSE ESRC DTP Studentships. LSE PhD Studentships are tenable for four years and cover full fees and an annual stipend of £18,000. They are available for UK, EU and international students undertaking research in any LSE discipline, with annual renewal subject to satisfactory academic performance. These awards will be made solely on the basis of outstanding academic merit and research potential. This relates both to your past academic record and to an assessment of your likely aptitude to complete a PhD in your chosen topic in the time allocated. The studentships include a requirement that scholars contribute to their department as part of their research training, in the form of teaching or other work, usually from year two onwards.", institution: Institution.find_by(name: "LSE - The London School"), application_start_date: Date.new(2019,7,19), application_end_date: Date.new(2019,9,18), url: "http://www.lse.ac.uk/study-at-lse/Graduate/fees-and-funding/PhD-Studentships" )

sch_3 = Scholarship.create(name: "ICMA Centre Scholarships", area: area_economics, description: "For PhDs in Finance & Capital Markets (ICMA Centre). Applicants must have a good undergraduate degree in a relevant subject and a Master’s degree, preferably at distinction level. Applicants must submit a research proposal and be able to supply two reference letters. These scholarships cover full fees and £15,000 stipend for 1 year. It is renewable for a further 2 years subject to performance. 1 year, renewable for a further 2 years subject to performance. Scholarships are allocated on a rolling basis, apply as early as possible, final deadline for applications is 30 June 2020.", institution: Institution.find_by(name: "Henley Business School"), application_start_date: Date.new(2020,03,02), application_end_date: Date.new(2020,06,30), url: "https://www.henley.ac.uk/scholarships/phd-scholarships-all" )

sch_4 = Scholarship.create(name: "Cambridge Scholarships", area: area_economics, description: "Cambridge Trust is pleased to offer the Vice-Chancellor's Awards (for UK and EU students) and the Cambridge International Scholarships (for international students) for those undertaking PhD studies. The aim of the Vice-Chancellor's Awards and Cambridge International Scholarships is to ensure that the 250 highest ranked students, irrespective of nationality, receive full financial support to undertake research leading to a PhD. The Scholarships pay the University Composition Fee and a maintenance allowance sufficient for a single person. Applicants who wish to start their PhDs in in 2020-21 must apply by either the 3 December 2019 or 7 January 2020, whichever deadline is appropriate for your course. Please see the Graduate Admissions webpage 'Application & Funding Deadlines'.", institution: Institution.find_by(name: "University of Cambridge"), application_start_date: Date.new(2019,12,03), application_end_date: Date.new(2020,1,7), url: "https://euraxess.ec.europa.eu/worldwide/brazil/fully-funded-phd-scholarships-university-cambridge-uk")

sch_5 = Scholarship.create(name: "Aston University Scholarships", area: area_economics, description: "Applications are invited for a three year Postgraduate studentship funded by the School of Engineering and Applied Science, to be undertaken within the European Bioenergy Research Institute Research Group (https://www2.aston.ac.uk/eas/research/groups/ebri ) at Aston University.  The successful applicant will join an established group working on bioenergy, including leading UK researchers on sustainability with close links to policy stakeholders.", institution: Institution.find_by(name: "Aston University"), application_start_date: Date.new(2019,7,29), application_end_date: Date.new(2019,9,30), url: "https://scholarshipdb.net/scholarships-in-United-Kingdom/R190391-Ph-D-Studentship-3-Years-Economic-And-Socio-Economic-Feasibility-Of-Bioenergy-Systems-Aston-University=n42yufzQ6RGUWgAlkGUTnw.html")

sch_6 = Scholarship.create(name: "Defap Scholarships", area: area_economics, description: "Defap, Graduate School offers 9 Ph.D. scholarships in Public Economics. First year students at Defap Graduate School can enroll directly to the 3 year-doctoral programme (with scholarships) or to 1 year-master programme (without scholarships). After completing the master programme, successful students have the opportunity to compete for a PhD position endowed with a scholarship.", institution: Institution.find_by(name: "Defap- Graduate School in Public Economics"), application_start_date: Date.new(2019,2,28), application_end_date: Date.new(2019,5,31), url: "https://www.internationalscholarships.com/scholarships/1915/9_PhD_Scholarships_In_Public_Economics")


30.times do
  area = Area.find(rand(min_area..max_area))
  type = TYPES.sample

  # if area.name == "Economics"
  #   description = "The breadth and depth of our expertise enables us to offer supervision in all major areas of economics and finance. The School has more than 40 research-active faculty working in a wide range of research areas, including macroeconomics, microeconomic theory and game theory, applied microeconomics, econometric theory, time series analysis, theoretical and empirical finance."
  if area.name == "Management"
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

