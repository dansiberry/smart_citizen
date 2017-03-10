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

Post.delete_all
Comment.delete_all
User.delete_all

citizen_user = User.new(
  first_name: "Erin",
  last_name: "Douglas",
  address: "Carrer de Sardenya, 229",
  city: "Barcelona",
  neighbourhood: "Eixample",
  email: "erin.douglas@gmail.com",
  password: "iamawesome")
citizen_user.save

citizen_user2 = User.new(
  first_name: "Dan",
  last_name: "Siberry",
  address: "Carrer de Ferlandina, 37",
  city: "Barcelona",
  neighbourhood: "Gracia",
  email: "dan.siberry@gmail.com",
  password: "iamawesome")
citizen_user2.save

citizen_user3 = User.new(
  first_name: "Gustavo",
  last_name: "De Vita",
  address: "Carrer de Sardenya, 229",
  city: "Barcelona",
  neighbourhood: "Eixample",
  email: "gustavo.devita@riseup.net",
  password: "iamawesome")
citizen_user3.save

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
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/ada_colau_1.jpg"
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
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/gerardopisarello263x395_1.jpg"
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
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/laia_ortiz_0.jpg"
politician3.save

post = Post.new(
  title: "Pickpockets",
  category: 'pickpockets',
  content: "I haven't been targeted by pickpockets but everytime my friends visit me here, they get something stolen. It's giving our city a bad reputation.",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post.users << user
post.save
post.user = citizen_user
post.save


post2 = Post.new(
  title: "Dog poo in the streets",
  category: 'dog poo',
  content: "Can we do something about the dog poo on the street? People are not picking up after their dogs.",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post2.remote_photo_url = "http://19mvmv3yn2qc2bdb912o1t2n.wpengine.netdna-cdn.com/science/files/2014/12/PooPower.jpg"
post2.users << user2
post2.save
post2.user = citizen_user2
post2.save


post3 = Post.new(
  title: "Homeless sleeping in banks",
  category: 'homeless',
  content: "A fair number of banks have homeless sleeping in the indoor ATM areas. It makes it unappealing to withdraw money.",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post3.remote_photo_url = "http://www.causemark.com/wp-content/uploads/2014/04/homeless.jpg"
post3.users << user3
post3.save
post3.user = citizen_user
post3.save


post4 = Post.new(
  title: "Housing prices rising",
  category: "housing",
  content: "The rent on flats is going up and it's hard to find an affordable place in the city. What are you doing to combat this?",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post4.users << user
post4.save
post4.user = citizen_user2
post4.save


post5 = Post.new(
  title: "Bike lanes",
  category: "bicycles",
  content: "There's not enough bike lanes in the city.",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post5.remote_photo_url = "http://s4.reutersmedia.net/resources/r/?m=02&d=20120808&t=2&i=640081434&w=&fh=545px&fw=&ll=&pl=&sq=&r=2012-08-08T152143Z_1_CBRE87716OC00_RTROPTP_0_GREECE-BICYCLES"
post5.users << user3
post5.save
post5.user = citizen_user3
post5.save


post6 = Post.new(
  title: "Noise in the streets",
  category: "noise",
  content: "It's hard to sleep when people are making noise on the street. Do we have city ordinances against this after a certain hour?",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post6.users << user
post6.save
post6.user = citizen_user3
post6.save


post7 = Post.new(
  title: "Don't ban AirBnB",
  category: "AirBnB",
  content: "I heard you are considering banning the service and this would be a mistake. My rent goes up all the time and renting one of my spare rooms is how I'm able to keep my apartment.",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post7.users << user
post7.save
post7.user = citizen_user2
post7.save

