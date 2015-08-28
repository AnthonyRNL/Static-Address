# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Matthew", username: "MasterMatthew", password: 'fdaf32dl43lka')
User.create(name: "Anthony", username: "MasterAnthony", password: 'w2kejr43kls3')
User.create(name: "Raina", 	 username: "MasterRaina", 	password: "53jfkl946popx")
User.create(name: "Steven",  username: "MasterSteven", 	password: "fd28xzopzbvmn")

Post.create(userID: 3, content: "This is Raina's post",   upvote: 0)
Post.create(userID: 2, content: "This is Anthony's post", upvote: 0)
Post.create(userID: 1, content: "This is Matthew's post", upvote: 0)
Post.create(userID: 4, content: "This is Steven's post",  upvote: 0)

Comment.create(postID: 4, userID: 3, content: "Cool stuff")
Comment.create(postID: 3, userID: 2, content: "Cool stuff")
Comment.create(postID: 2, userID: 4, content: "Cool stuff")
Comment.create(postID: 1, userID: 1, content: "Cool stuff")