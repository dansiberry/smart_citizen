# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(email: "tony.stark@gmail.com", password: "iamironman")
politician_user = User.new(email: "sergio.rivas@phc.gov", password: "yeah")
user.save
politician_user.save

comment = Comment.new(content: "I will vote against the repeal and replace bill.")
comment.save
post = Post.new(title: "Save Obamacare", content: "Obamacare saved my life. What are you doing to make sure it is not repealed?")
post.save

user.posts << post
politician_user.comments << comment
post.comments << comment

