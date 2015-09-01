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

Post.create(title: "Haahahah", user_id: 1, content: "This is Raina's post",   upvote: 0, soundfile: "https://www.youtube.com/watch?v=fnj-eo27hD8")
Post.create(title: "Das mah shiit", user_id: 1, content: "This is Anthony's post", upvote: 0, soundfile: "https://soundcloud.com/majorlazer/kranium-ft-ty-dolla-ign-nobody-has-to-know-major-lazer-kickraux-remix")
Post.create(title: "Listen i da best", user_id: 1, content: "This is Matthew's post", upvote: 0, soundfile: "https://soundcloud.com/silasisdead/silasisdead-remix")
Post.create(title: "i so good at musik", user_id: 1, content: "This is Steven's post",  upvote: 0, soundfile: "https://www.youtube.com/watch?v=x_cmZyYHMTk")

Comment.create(post_id: 4, user_id: 3, content: "NOT Cool stuff")
Comment.create(post_id: 3, user_id: 2, content: "I HATE THIS SONG")
Comment.create(post_id: 2, user_id: 4, content: "YOUR Creations insult god")
Comment.create(post_id: 1, user_id: 1, content: "meh...")
