# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post1 = Post.create(title: "Stupid post", body: "Here is some text")
post2 = Post.create(title: "post post post", body: "More text")

gp3 = User.create(user_name: "gp3gp3gp3", password: "lamp", first_name: "George", last_name: "Paul", email: "gpaul.empyrean@gmail.com")
