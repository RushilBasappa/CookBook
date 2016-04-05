# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.create!(
  name: "Maggi",
  summary: "Delicious Food",
  procedure:"1. Boil maggi noodles for 2 mins\r\n2. add maggi masala\r\n3. serve",
  chef_id:1
)
Recipe.create!(
  name: "Maggi2",
  summary: "Delicious Food",
  procedure:"1. Boil maggi noodles for 2 mins\r\n2. add maggi masala\r\n3. serve",
  chef_id:1
)
Recipe.create!(
  name: "Maggi3",
  summary: "Delicious Food",
  procedure:"1. Boil maggi noodles for 2 mins\r\n2. add maggi masala\r\n3. serve",
  chef_id:1
)
