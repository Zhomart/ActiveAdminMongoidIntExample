# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Mongoid.default_session.drop

AdminUser.create email: 'admin@example.org', password: 'admin_example'

categories = 10.times.map do
  Category.create name: Faker::Commerce.department, description: Faker::Lorem.paragraph
end

users = 10.times.map do
  name = [Faker::Name.first_name, Faker::Name.last_name]
  User.create first_name: name[0], last_name: name[1],
    username: Faker::Internet.user_name(name[0]),
    age: rand(50) + 13
end

posts = 50.times.map do
  Post.create category: categories.sample,
    author: users.sample,
    published_at: Faker::Time.between(10.days.ago, Time.now),
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph,
    position: rand(1000),
    starred: (rand > 0.75),
    foo_id: rand(10000)
end

blog_posts = 10.times.map do
  Blog::Post.create category: categories.sample,
    author: users.sample,
    published_at: Faker::Time.between(10.days.ago, Time.now),
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph,
    position: rand(1000),
    starred: (rand > 0.75),
    foo_id: rand(10000)
end

stores = 10.times do
  Store.create name: Faker::Company.name
end
