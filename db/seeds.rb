Organization.delete_all
Person.delete_all
Location.delete_all
JobTitle.delete_all
Employment.delete_all

12.times { Organization.create!(name: Faker::Company.name) }
17.times { Person.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name) }
9.times { JobTitle.create!(name: Faker::Name.title) }
11.times { Location.create!(name: Faker::Address.city, lat: Faker::Address.latitude, lng: Faker::Address.longitude) }
