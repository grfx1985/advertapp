# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Advert.destroy_all
Comment.destroy_all
Admin.destroy_all
5.times do
  admin = Admin.create(email: Faker::Internet.email, password: "test1234")
  1.times do
    a = Advert.create(admin_id: admin.id,job_hunt: false, buy: false, sell: false, hire: false , exchange: false, title:Faker::Lorem.word, description: Faker::Lorem.sentence, name:Faker::Name.first_name, surname:Faker::Name.last_name, email: Faker::Internet.email, mobile: Faker::Number.number(10) , active: true, address: Faker::Address.country)
    2.times do
      Comment.create(name: Faker::Name.name, content: Faker::Lorem.sentence, advert_id: a.id)
    end
  end
end
