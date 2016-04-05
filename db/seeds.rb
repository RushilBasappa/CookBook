# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = Chef.where(email:"rushil@gmail.com").first_or_create(chefname: "Rushil",
                   email: "rushil@gmail.com",
                   password: "12345678",
                   password_confirmation: "12345678")


Recipe.create!(
  name: "Maggi",
  summary: "Delicious Food",
  procedure:"1. Boil maggi noodles for 2 mins\r\n2. add maggi masala\r\n3. serve",
  chef_id:1
)
Recipe.create!(
  name: "Egg Maggie",
  summary: "Delicious Food",
  procedure:"Maggi with eggs and caremelized onions Boil water, add Maggi noodles and the tastemaker. Allow the Maggi to cook; in the meanwhile take out onion flakes. Put some olive oil in a pan and saute the onion flakes. You can also add garlic pieces. To caramelize onions, add a bit of sugar. Take out the yolk of two eggs and add it on the pan above onions and garlic. Serve Maggi in a plate, layer fried eggs on the top and then top it with the caramelized garlic and onions. ",
  chef_id:1
)
Recipe.create!(
  name: "Aloo Paratha",
  summary: "Delicious Food",
  procedure:"1. first boil the potatoes and peel them. you can boil or steam the potatoes in a pressure cooker, steamer or electric cooker.
   2. chop and then mash the potatoes with a potato masher.
   3. the potatoes should be mashed very well. there should be no lumps or small pieces in it.
   4. now add the chopped green chilies, garam masala powder, red chili powder, dry mango powder and salt.
   5. mix the spice powders and green chilies with the mashed potatoes very well. check the taste and add more salt or red chili powder or dry mango powder as per your taste. you can also add 2 to 3 tsp of chopped coriander leaves. a variation is to add finely chopped onions, if you like. but the onions have to be finely chopped. otherwise they came out when rolling the parathas. keep prepared aloo stuffing aside. ",
  chef_id:1
)
