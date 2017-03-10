# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user = User.new(email: "tony.stark@gmail.com", password: "iamironman")
# politician_user = User.new(email: "sergio.rivas@phc.gov", password: "yeah")
# user.save
# politician_user.save

# comment = Comment.new(content: "I will vote against the repeal and replace bill.")
# comment.save
# post = Post.new(title: "Save Obamacare", content: "Obamacare saved my life. What are you doing to make sure it is not repealed?")
# post.save

# user.posts << post
# politician_user.comments << comment
# post.comments << comment

# 10.times do
#     user = User.new(email: Faker::Internet.email, password: "password", city: "Barcelona", address: ["Gracia", "Sants", "Poble Sec", "Poble Nou"].sample(1)[0], first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
#     user.save
#     comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam sint suscipit facilis, veniam adipisci sunt, ut doloremque qui ipsa commodi dolorem fugiat iure? Quidem, odit velit recusandae. Quia dolor veritatis modi nam non voluptatum, at blanditiis quas atque nisi, qui.")
#     comment.save
#     post = Post.new(title: Faker::Commerce.color, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis deleniti, itaque et enim rem ex iure suscipit molestias quia fugiat. Nesciunt reiciendis quis quam eligendi omnis eum harum et quo consequatur impedit tempora quae vitae magni necessitatibus blanditiis doloribus, iste earum quasi quibusdam aspernatur! Quos quidem iure sint, sunt harum.", category: "issue-category"  ,city: "Barcelona", neighbourhood: ["Gracia", "Sants", "Poble Sec", "Poble Nou"].sample(1)[0] )
#     post.save

#     user.posts << post
#     user.comments << comment
#     post.comments << comment
# end

UserAsPolitician.delete_all
UserPost.delete_all
PostComment.delete_all
User.delete_all
Post.delete_all
Comment.delete_all

citizen_user = User.new(
  first_name: "Erin",
  last_name: "Douglas",
  address: "Carrer de Sardenya, 229",
  city: "Barcelona",
  neighbourhood: "Eixample",
  email: "erin.douglas@gmail.com",
  password: "iamawesome")
citizen_user.save

user = User.new(first_name: "Ada",
  last_name: "Colau Ballano",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "alcaldessa@bcn.cat",
  password: "ACB2017")
user.save
politician = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Mayor',
  elected: true,
  twitter_handle: "@AdaColau",
  user: user)
politician.save

user2 = User.new(first_name: "Gerardo",
  last_name: "Pisarello Prados",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "gpisarellop@bcn.cat",
  password: "GPP2017")
user2.save
politician2 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'First Deputy Mayor',
  elected: true,
  twitter_handle: "@G_Pisarello",
  user: user2)
politician2.save

user3 = User.new(first_name: "Laia",
  last_name: "Ortiz Castellví",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "lortizc@bcn.cat",
  password: "LOC2017")
user3.save
politician3 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Third Deputy Mayor',
  elected: true,
  twitter_handle: "@Laiaortiz",
  user: user3)
politician3.save


10.times do |i|
  post = Post.new(
    title: "Issue #{rand(0..999)}",
    category: 'pickpockets',
    content: "#{rand(0..999)} I haven't been targeted by pickpockets but everytime my friends visit me here, they get something stolen. It's giving our city a bad reputation.",
    city: 'Barcelona',
    neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
  post.users << [user, user2, user3].sample
  post.save
  post.user = citizen_user
  post.save

  user_post = UserPost.new(user: user, post: post)
  user_post.save
end


