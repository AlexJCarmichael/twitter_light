# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  user = User.create(handle: "@"+Faker::Lorem.word, first_name: Faker::Name.name, last_name: Faker::Name.name, email: Faker::Internet.email)
  rand(2..20).times do
    Tweet.create(body: Faker::Hipster.sentence(4, true, 7), user_id: user.id)
  end
end
