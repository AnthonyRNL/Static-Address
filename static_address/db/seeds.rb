# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Matthew", username: "MasterMatthew", email: "What@What.com", avatar: "http://cdn.1xrun.com/images/uploads/3_immer.jpg")
User.create(name: "Anthony", username: "MasterAnthony", email: "What@What.com", avatar: "http://cdn.1xrun.com/images/uploads/3_immer.jpg")
User.create(name: "Raina", 	 username: "MasterRaina", email: "What@What.com", avatar: "http://cdn.1xrun.com/images/uploads/3_immer.jpg")
User.create(name: "Steven",  username: "MasterSteven", email: "What@What.com", avatar: "http://cdn.1xrun.com/images/uploads/3_immer.jpg")

Post.create(title: "The Kinky Fuzz EP", user_id: 1, content: "This is Matt Fewer here. Seeding some new data for my new website. Checkout this original instrumental I recorded with the shake",   upvote: 0, soundfile: "https://soundcloud.com/matt-fewer/kinky-fuzz/s-ZdAab")
Post.create(title: "Das mah shiit", user_id: 2, content: "Just can't get this song out of my head!! Needed to post it! Sorry I know this forum is for original music only but had to share haha :)", upvote: 0, soundfile: "https://soundcloud.com/riserecords/sets/silverstein-i-am-alive-in")
Post.create(title: "New Track: Already Gone", user_id: 1, content: "Here's another fresh new track off my CD, The Kinky Fuzz Ep", upvote: 0, soundfile: "https://soundcloud.com/matt-fewer/already-gone/s-IbaZb")
Post.create(title: "One More: Paralyzed", user_id: 1, content: "OK OK, I'm going a little crazy with the posts. But I had to just show you guys the last but not least song on the album.",  upvote: 0, soundfile: "https://soundcloud.com/matt-fewer/paralyzed/s-JcQ05")

Comment.create(post_id: 4, user_id: 3, content: "NOT Cool stuff")
Comment.create(post_id: 3, user_id: 2, content: "I HATE THIS SONG")
Comment.create(post_id: 2, user_id: 4, content: "YOUR Creations insult god")
Comment.create(post_id: 1, user_id: 1, content: "meh...")
