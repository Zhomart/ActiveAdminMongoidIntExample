# ActiveAdmin with integrated Mongoid 4.0 support example on Rails 4

## Running

- Clone
- `$ bundle install` install gems
- `$ rake db:seed` fill database with mock data. For more info look at `db/seeds.rb`
- `$ rails s` run
- Open http://127.0.0.1:3000/admin
- Admin: `admin@example.org`:`admin_example`

## Known problems

- Associations isn't fully supported, as ransack doesn't support it.
- Edit form doesn't work boolean/datetime inputs correctly
- Comments disabled
- Doesn't generate textarea, mongoid/mongodb doesn't have type `Text`
- AA generates migrations for mongoid
