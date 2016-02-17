# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


4.times.each do |x| 
 Movie.create(:name => Faker::Book.title, :link => Faker::Bitcoin.address, :video => Faker::Internet.email, :tag => Faker::Book.genre, :description => Faker::Hipster.paragraph, :avatar => Faker::Avatar.image #=> "https://robohash.org/sitsequiquia.png?size=300x300" #=> "https://robohash.org/sitsequiquia.png?size=300x300"
)
end

