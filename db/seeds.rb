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
  first_name: "Bob",
  last_name: "Jones",
  address: "Carrer de Sardenya, 229",
  city: "Barcelona",
  neighbourhood: "Eixample",
  email: "bob.jones@gmail.com",
  password: "iamawesome")
citizen_user.save

citizen_user2 = User.new(
  first_name: "Pau",
  last_name: "Casals",
  address: "Carrer de Ferlandina, 102",
  city: "Barcelona",
  neighbourhood: "Gracia",
  email: "pau.casals@gmail.com",
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

citizen_user4 = User.new(
  first_name: "Jose",
  last_name: "Santa Maria",
  address: "Carrer de Ganduxer, 20",
  city: "Barcelona",
  neighbourhood: "Sarrià-Sant Gervasi",
  email: "jose.santamaria@gmail.com",
  password: "iamawesome")
citizen_user4.save

admin_user = User.new(
  first_name: "Erin",
  last_name: "Douglas",
  address: "Travessera de dalt 33",
  city: "Barcelona",
  neighbourhood: "Gracia",
  email: "erin.douglas@gmail.com",
  password: "iamawesome",
  admin: true)
admin_user.save

admin_user2 = User.new(
  first_name: "Alvaro",
  last_name: "Santoma Vilaclara",
  address: "Carrer de Ganduxer, 44",
  city: "Barcelona",
  neighbourhood: "Sarrià-Sant Gervasi",
  email: "alvarosantoma@gmail.com",
  password: "iamawesome",
  admin: true)
admin_user2.save

admin_user3 = User.new(
  first_name: "Dan",
  last_name: "Siberry",
  address: "Carrer de Ferlandina, 37",
  city: "Barcelona",
  neighbourhood: "Gracia",
  email: "dan.siberry@gmail.com",
  password: "iamawesome",
  admin: true)


# user = User.new(first_name: "Ada",
#   last_name: "Colau Ballano",
#   address: "Pl. Sant Jaume,1",
#   city: "Barcelona",
#   neighbourhood: "Ciutat Vella",
#   email: "alcaldessa@bcn.cat",
#   password: "ACB2017")
# user.save
# politician = UserAsPolitician.new(political_party: 'Barcelona en Comú',
#   office: 'Mayor',
#   elected: true,
#   twitter_handle: "@AdaColau",
#   user: user)
# politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/ada_colau_1.jpg"
# politician.save

# user2 = User.new(first_name: "Gerardo",
#   last_name: "Pisarello Prados",
#   address: "Pl. Sant Jaume,1",
#   city: "Barcelona",
#   neighbourhood: "Ciutat Vella",
#   email: "gpisarellop@bcn.cat",
#   password: "GPP2017")
# user2.save
# politician2 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
#   office: 'First Deputy Mayor',
#   elected: true,
#   twitter_handle: "@G_Pisarello",
#   user: user2)
# politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/gerardopisarello263x395_1.jpg"
# politician2.save

# user3 = User.new(first_name: "Laia",
#   last_name: "Ortiz Castellví",
#   address: "Pl. Sant Jaume,1",
#   city: "Barcelona",
#   neighbourhood: "Ciutat Vella",
#   email: "lortizc@bcn.cat",
#   password: "LOC2017")
# user3.save
# politician3 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
#   office: 'Third Deputy Mayor',
#   elected: true,
#   twitter_handle: "@Laiaortiz",
#   user: user3)
# politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/laia_ortiz_0.jpg"
# politician3.save

# user4 = User.new(first_name: "Jaume",
#   last_name: "Asens i Llodrà",
#   address: "Pl. Sant Jaume,1",
#   city: "Barcelona",
#   neighbourhood: "Ciutat Vella",
#   email: "jasensl@bcn.cat",
#   password: "JAL2017")
# user4.save
# politician4 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
#   office: 'Fourth Deputy Mayor',
#   elected: true,
#   twitter_handle: "@Jaumeasens",
#   user: user4)
# politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/jaume_asens_0.jpg"
# politician4.save

# user5 = User.new(first_name: "Janet",
#   last_name: "Sanz Cid",
#   address: "Pl. Sant Jaume,1",
#   city: "Barcelona",
#   neighbourhood: "Ciutat Vella",
#   email: "jsanzc@bcn.cat",
#   password: "JSC2017")
# user5.save
# politician5 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
#   office: 'Fifth Deputy Mayor',
#   elected: true,
#   twitter_handle: "@janetsanz",
#   user: user5)
# politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/janet-sanzh_97x146_0.jpg"
# politician5.save

# user6 = User.new(first_name: "Gala",
#   last_name: "Pin Ferrando",
#   address: "Pl. Sant Jaume,1",
#   city: "Barcelona",
#   neighbourhood: "Ciutat Vella",
#   email: "gpinf@bcn.cat",
#   password: "GPF2017")
# user6.save
# politician6 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
#   office: 'Councillor for Participation and Districts',
#   elected: true,
#   twitter_handle: "@galapita",
#   user: user6)
# politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/galapin_97x146_0.jpg"
# politician6.save

# user7 = User.new(first_name: "Agustí",
#   last_name: "Colom Cabau",
#   address: "Pl. Sant Jaume,1",
#   city: "Barcelona",
#   neighbourhood: "Ciutat Vella",
#   email: "acolomc@bcn.cat",
#   password: "ACC2017")
# user7.save
# politician7 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
#   office: 'Councillor for Enterprise and Tourism',
#   elected: true,
#   twitter_handle: "@acolom",
#   user: user7)
# politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
# politician7.save


#Politicans in Spanish

user = User.new(first_name: "Ada",
  last_name: "Colau Ballano",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "alcaldessa@bcn.cat",
  password: "ACB2017")
user.save
politician = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Alcaldesa',
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
  office: 'Teniente Alcalde',
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
  office: 'Tercera Teniente de Alcaldía',
  elected: true,
  twitter_handle: "@Laiaortiz",
  user: user3)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/laia_ortiz_0.jpg"
politician3.save

user4 = User.new(first_name: "Jaume",
  last_name: "Asens i Llodrà",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "jasensl@bcn.cat",
  password: "JAL2017")
user4.save
politician4 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Cuarto Teniente de Alcaldía',
  elected: true,
  twitter_handle: "@Jaumeasens",
  user: user4)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/jaume_asens_0.jpg"
politician4.save

user5 = User.new(first_name: "Janet",
  last_name: "Sanz Cid",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "jsanzc@bcn.cat",
  password: "JSC2017")
user5.save
politician5 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Quinta Teniente de Alcladía',
  elected: true,
  twitter_handle: "@janetsanz",
  user: user5)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/janet-sanzh_97x146_0.jpg"
politician5.save

user6 = User.new(first_name: "Gala",
  last_name: "Pin Ferrando",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "gpinf@bcn.cat",
  password: "GPF2017")
user6.save
politician6 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Regidora de Participación y Distritos',
  elected: true,
  twitter_handle: "@galapita",
  user: user6)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/galapin_97x146_0.jpg"
politician6.save

user7 = User.new(first_name: "Agustí",
  last_name: "Colom Cabau",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "acolomc@bcn.cat",
  password: "ACC2017")
user7.save
politician7 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Regidor de Empresa y Turismo',
  elected: true,
  twitter_handle: "@acolom",
  user: user7)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician7.save

user8 = User.new(first_name: "Laura",
  last_name: "Pérez Castaño",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sants-Montjuic",
  email: "lperezc@bcn.cat",
  password: "LPC2017")
user8.save
politician8 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Concejala de Feminismos y LGTBI',
  elected: true,
  twitter_handle: "@L_Makeba",
  user: user8)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician8.save

user9 = User.new(first_name: "Mercedes",
  last_name: "Vidal Lago",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Horta-Guinardó",
  email: "mvidall@bcn.cat",
  password: "MVL2017")
user9.save
politician9 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Concejala de Movilidad',
  elected: true,
  twitter_handle: "@mvidal80",
  user: user9)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician9.save

user10 = User.new(first_name: "Josep Maria",
  last_name: "Montaner Martorell",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sant Martí",
  email: "jmontanerm@bcn.cat",
  password: "JMM2017")
user10.save
politician10 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Concejal de Vivienda',
  elected: true,
  twitter_handle: "@jm_montaner",
  user: user10)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician10.save

user11 = User.new(first_name: "Eloi",
  last_name: "Badia Casas",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Gracia",
  email: "ebadia@bcn.cat",
  password: "EBC2017")
user11.save
politician11 = UserAsPolitician.new(political_party: 'Barcelona en Comú',
  office: 'Concejal de Presidencia, Energía y Agua',
  elected: true,
  twitter_handle: "@eloibadia",
  user: user11)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician11.save

user12 = User.new(first_name: "Xavier",
  last_name: "Trias i Vidal de Llobatera",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "xtrias@bcn.cat",
  password: "XTV2017")
user12.save
politician12 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejal Jefe del Grupo Municipal de PDeCAT – Unió – Demòcrates',
  elected: true,
  twitter_handle: "@xaviertrias",
  user: user12)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician12.save

user13 = User.new(first_name: "Sònia",
  last_name: "Recasens i Alsina",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Les Corts",
  email: "srecasens@bcn.cat",
  password: "SRA2017")
user13.save
politician13 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejala Portavoz adjunta del Grupo Municipal de PDeCAT – Unió – Demòcrates',
  elected: true,
  twitter_handle: "@sonia_recasens",
  user: user13)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician13.save

user14 = User.new(first_name: "Joaquim",
  last_name: "Forn i Chiariello",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sants-Montjuic",
  email: "jfornc@bcn.cat",
  password: "JFC2017")
user14.save
politician14 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejal titular de la Junta de Portavoces',
  elected: true,
  twitter_handle: "@quimforn",
  user: user14)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician14.save

user15 = User.new(first_name: "Jaume",
  last_name: "Ciurana i Llevadot",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "jciurana@bcn.cat",
  password: "JCL2017")
user15.save
politician15 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejal del Consejo Municipal',
  elected: true,
  twitter_handle: "@jciurana",
  user: user15)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician15.save


user16 = User.new(first_name: "Gerard",
  last_name: "Ardanuy i Mata",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Gracia",
  email: "gardanuy@bcn.cat",
  password: "GAM2017")
user16.save
politician16 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejal del Consejo Municipal',
  elected: true,
  twitter_handle: "@gardanuy_bcn",
  user: user16)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician16.save

user17 = User.new(first_name: "Jordi",
  last_name: "Martí i Galbis",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sarrià-Sant Gervasi",
  email: "jmargig@bcn.cat",
  password: "JMG2017")
user17.save
politician17 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejal del Consejo Municipal',
  elected: true,
  twitter_handle: "",
  user: user17)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician17.save


user18 = User.new(first_name: "Mercè",
  last_name: "Homs i Molist",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "mhomsm@bcn.cat",
  password: "MHM2017")
user18.save
politician18 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejala del Consejo Municipal',
  elected: true,
  twitter_handle: "",
  user: user18)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician18.save

user19 = User.new(first_name: "Francina",
  last_name: "Vila i Valls",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Eixample",
  email: "fvilav@bcn.cat",
  password: "ACC2017")
user19.save
politician19 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejala del Consejo Municipal',
  elected: true,
  twitter_handle: "@fvilav",
  user: user19)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician19.save


user20 = User.new(first_name: "Teresa Maria",
  last_name: "Fandos i Payà",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "tfandos@bcn.cat",
  password: "FP2017")
user20.save
politician20 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejala del Consejo Municipal',
  elected: true,
  twitter_handle: "",
  user: user20)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician20.save

user21 = User.new(first_name: "Raimond",
  last_name: "Blasi i Navarro",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Nou Barris",
  email: "rblasi@bcn.cat",
  password: "ACC2017")
user21.save
politician21 = UserAsPolitician.new(political_party: 'PDeCAT – Unió – Demòcrates',
  office: 'Concejal del Consejo Municipal',
  elected: true,
  twitter_handle: "@rblasi",
  user: user21)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician21.save



user22 = User.new(first_name: "Carina",
  last_name: "Mejías Sánchez",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "cmejiass@bcn.cat",
  password: "CMJ2017")
user22.save
politician22 = UserAsPolitician.new(political_party: "Ciutadans-C´s",
  office: "Concejala Jefa del Grupo Municipal de C's",
  elected: true,
  twitter_handle: "@CarinaMejias",
  user: user22)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician22.save


user23 = User.new(first_name: "Maria Magdalena",
  last_name: "Barceló Verea",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sants-Montjuic",
  email: "mbarcelov@bcn.cat",
  password: "MBV2017")
user23.save
politician23 = UserAsPolitician.new(political_party: "Ciutadans-C´s",
  office: "Concejala Portavoz adjunta del Grupo Municipal de C's",
  elected: true,
  twitter_handle: "",
  user: user23)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician23.save


user24 = User.new(first_name: "Francisco",
  last_name: "Sierra López",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Les Corts",
  email: "fsierral@bcn.cat",
  password: "FSL2017")
user24.save
politician24 = UserAsPolitician.new(political_party: "Ciutadans-C´s",
  office: 'Concejal titular de la Junta de Portavoces',
  elected: true,
  twitter_handle: "@pacosierral",
  user: user24)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician24.save


user25 = User.new(first_name: "Santiago",
  last_name: "Alonso Beltran",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Nou Barris",
  email: "salonsob@bcn.cat",
  password: "SAB2017")
user25.save
politician25 = UserAsPolitician.new(political_party: "Ciutadans-C´s",
  office: 'Presidente del Distrito de Nou Barris',
  elected: true,
  twitter_handle: "@YagoAlonsoBCN",
  user: user25)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician25.save


user26 = User.new(first_name: "Koldo",
  last_name: "Blanco Uzquiano",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "kblanco@bcn.cat",
  password: "ACC2017")
user26.save
politician26 = UserAsPolitician.new(political_party: "Ciutadans-C´s",
  office: 'Concejal del Consejo Municipal',
  elected: true,
  twitter_handle: "@koldoblanco",
  user: user26)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician26.save


user27 = User.new(first_name: "Alfred",
  last_name: "Bosch i Pascual",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Nou Barris",
  email: "aboschp@bcn.cat",
  password: "ACC2017")
user27.save
politician27 = UserAsPolitician.new(political_party: 'Esquerra Republicana de Catalunya',
  office: 'Concejal presidente del grupo municipal de ERC',
  elected: true,
  twitter_handle: "",
  user: user27)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician27.save


user28 = User.new(first_name: "Juanjo",
  last_name: "Puigcorbé i Benaiges",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Les Corts",
  email: "jpuigcorbeb@bcn.cat",
  password: "JPB2017")
user28.save
politician28 = UserAsPolitician.new(political_party: 'Esquerra Republicana de Catalunya',
  office: 'Concejal del Consejo Municipal',
  elected: true,
  twitter_handle: "@jpuigcorbe",
  user: user28)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician28.save


user29 = User.new(first_name: "Montserrat",
  last_name: "Benedí i Altés",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "mbenedia@bcn.cat",
  password: "MBA2017")
user29.save
politician29 = UserAsPolitician.new(political_party: 'Esquerra Republicana de Catalunya',
  office: 'Presidenta de la Comisión de Derechos Sociales, Cultura y Deportes',
  elected: true,
  twitter_handle: "@montsebenedi",
  user: user29)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician29.save


user30 = User.new(first_name: "Trini",
  last_name: "Capdevila i Burniol",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Eixample",
  email: "tcapdevilab@bcn.cat",
  password: "TCB2017")
user30.save
politician30 = UserAsPolitician.new(political_party: 'Esquerra Republicana de Catalunya',
  office: "Presidenta del Distrito de L'Eixample",
  elected: true,
  twitter_handle: "@t_capdevila",
  user: user30)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician30.save


user31 = User.new(first_name: "Jordi",
  last_name: "Coronas i Martorell",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "jcoronas@bcn.cat",
  password: "JCM2017")
user31.save
politician31 = UserAsPolitician.new(political_party: 'Esquerra Republicana de Catalunya',
  office: 'Concejal titular de la Junta de Portavoces',
  elected: true,
  twitter_handle: "@jordicoronas",
  user: user31)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician31.save


user32 = User.new(first_name: "Jaume",
  last_name: "Collboni i Cuadrado",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Horta-Guinardó",
  email: "jcollbonic@bcn.cat",
  password: "ACC2017")
user32.save
politician32 = UserAsPolitician.new(political_party: 'PSC',
  office: 'Segundo Teniente de alcaldia',
  elected: true,
  twitter_handle: "@jaumecollboni",
  user: user32)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician32.save

user33 = User.new(first_name: "Carmen",
  last_name: "Andrés Añón",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sants-Montjuic",
  email: "candres@bcn.cat",
  password: "CAA2017")
user33.save
politician33 = UserAsPolitician.new(political_party: 'PSC',
  office: 'Concejala de Infancia, Juventud y Personas Mayores',
  elected: true,
  twitter_handle: "@carmenandres_",
  user: user33)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician33.save

user34 = User.new(first_name: "Montserrat",
  last_name: "Ballarín Espuña",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Eixample",
  email: "mballarin@bcn.cat",
  password: "MBE2017")
user34.save
politician34 = UserAsPolitician.new(political_party: 'PSC',
  office: 'Concejala de Comercio y Mercados',
  elected: true,
  twitter_handle: "@BallarinMontseK)",
  user: user34)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician34.save

user35 = User.new(first_name: "Daniel",
  last_name: "Mòdol i Deltell",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sarrià-Sant Gervasi",
  email: "dmodold@bcn.cat",
  password: "DMD2017")
user35.save
politician35 = UserAsPolitician.new(political_party: 'PSC',
  office: 'Concejal de Arquitectura, Paisaje Urbano y Patrimonio',
  elected: true,
  twitter_handle: "@DModolD",
  user: user35)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician35.save


user36 = User.new(first_name: "Alberto",
  last_name: "Fernández Díaz",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Les Corts",
  email: "afernandezdiaz@bcn.cat",
  password: "AFD2017")
user36.save
politician36 = UserAsPolitician.new(political_party: 'Partit Popular',
  office: 'Concejal Presidente del Grupo Municipal del PP',
  elected: true,
  twitter_handle: "@albertofdezxbcn",
  user: user36)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician36.save

user37 = User.new(first_name: "Ángeles",
  last_name: "Esteller Ruedas",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "aesteller@bcn.cat",
  password: "AER2017")
user37.save
politician37 = UserAsPolitician.new(political_party: 'Partit Popular',
  office: 'Concejala Portavoz del Grupo Municipal del PP',
  elected: true,
  twitter_handle: "@AngelesEsteller",
  user: user37)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician37.save


user38 = User.new(first_name: "Xavier",
  last_name: "Mulleras Vinzia",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sants-Montjuic",
  email: "xmulleras@bcn.cat",
  password: "XMV2017")
user38.save
politician38 = UserAsPolitician.new(political_party: 'Partit Popular',
  office: 'Concejal Portavoz adjunto del Grupo Municipal del PP',
  elected: true,
  twitter_handle: "",
  user: user38)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician38.save


user39 = User.new(first_name: "María José",
  last_name: "Lecha González",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Ciutat Vella",
  email: "mlechag@bcn.cat",
  password: "MLG2017")
user39.save
politician39 = UserAsPolitician.new(political_party: 'CUP',
  office: 'Concejala Jefa del Grupo Municipal de CUP',
  elected: true,
  twitter_handle: "@MJLecha",
  user: user39)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician39.save

user40 = User.new(first_name: "Maria",
  last_name: "Rovira i Torrens",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sant Martí",
  email: "mrovirat@bcn.cat",
  password: "MRT2017")
user40.save
politician40 = UserAsPolitician.new(political_party: 'CUP',
  office: 'Concejala portavoz del Grupo Municipal de CUP',
  elected: true,
  twitter_handle: "@mrovira",
  user: user40)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician40.save

user41 = User.new(first_name: "Josep",
  last_name: "Garganté i Closa",
  address: "Pl. Sant Jaume,1",
  city: "Barcelona",
  neighbourhood: "Sants-Montjuic",
  email: "jgargantec@bcn.cat",
  password: "JGC2017")
user41.save
politician41 = UserAsPolitician.new(political_party: 'CUP',
  office: 'Concejal Portavoz adjunto del Grupo Municipal de CUP',
  elected: true,
  twitter_handle: "@jgarganteclosa",
  user: user41)
politician.remote_photo_url = "http://ajuntament.barcelona.cat/sites/default/files/agusti_colom_0.jpg"
politician41.save







# post = Post.new(
#   title: "Pickpockets",
#   category: 'pickpockets',
#   content: "I personally haven't been targeted by pickpockets but this seems to happen every time my friends visit me here, they get something stolen. I know that every major city has its pickpockets but Barcelona seems to be particularly notorious and it's giving us a bad reputation. Can we crack down on this?",
#   city: 'Barcelona',
#   neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
# post.users << user
# post.save
# post.user = citizen_user
# post.save


# post2 = Post.new(
#   title: "Dog poo in the streets",
#   category: 'dog poo',
#   content: "Can we do something about the dog poo on the street? Maybe have more cops in the area?  Despite the posted signs, people are not picking up after their dogs, especially in the Raval area. I've taken to insisting that all family and guests remove their shoes when they walk in the apartment so they don't track it in.",
#   city: 'Barcelona',
#   neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
# post2.remote_photo_url = "http://19mvmv3yn2qc2bdb912o1t2n.wpengine.netdna-cdn.com/science/files/2014/12/PooPower.jpg"
# post2.users << user2
# post2.save
# post2.user = citizen_user2
# post2.save


# post3 = Post.new(
#   title: "Homeless sleeping in banks",
#   category: 'homeless',
#   content: "A fair number of banks have homeless sleeping in the indoor ATM areas. I'm not sure if this is something the City Council can act on - maybe it's more the bank's responsibility - but it makes it unappealing to withdraw money for both locals and tourists in these banks. It's particularly common in the Raval.",
#   city: 'Barcelona',
#   neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
# post3.remote_photo_url = "http://www.causemark.com/wp-content/uploads/2014/04/homeless.jpg"
# post3.users << user3
# post3.save
# post3.user = citizen_user
# post3.save


# post4 = Post.new(
#   title: "Housing prices rising",
#   category: "housing",
#   content: "The rent on flats is going up and it's hard to find an affordable place to live in the city that's less than 1,000 euros/month for a one-bedroom. What are you doing to combat this? At the very least we should be allowing developers to build. Even better, the government could put in place rent control.",
#   city: 'Barcelona',
#   neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
# post4.users << user4
# post4.save
# post4.user = citizen_user2
# post4.save


# post5 = Post.new(
#   title: "Bike lanes",
#   category: "bicycles",
#   content: "There's not enough bike lanes in the city. It's dangerous for pedestrians if cyclists ride on the sidewalk and dangerous for cyclists if they ride next to the cars on the road.  Is the government planning on building more bike lanes and if so, where are they planned and what is the timeline on them?",
#   city: 'Barcelona',
#   neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
# post5.remote_photo_url = "http://s4.reutersmedia.net/resources/r/?m=02&d=20120808&t=2&i=640081434&w=&fh=545px&fw=&ll=&pl=&sq=&r=2012-08-08T152143Z_1_CBRE87716OC00_RTROPTP_0_GREECE-BICYCLES"
# post5.users << user3
# post5.save
# post5.user = citizen_user3
# post5.save


# post6 = Post.new(
#   title: "Noise in the streets",
#   category: "noise",
#   content: "It's hard to sleep when people are making noise on the street - smoking, drinking and talking loudly. My two-month old wakes up twice every night with the noise and I've tried yelling out the window and I've tried talking to the bar owner. This solves the problem for maybe a day and then it starts up again. Do we have city ordinances against this after a certain hour?",
#   city: 'Barcelona',
#   neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
# post6.users << user
# post6.save
# post6.user = citizen_user3
# post6.save


# post7 = Post.new(
#   title: "Don't ban AirBnB",
#   category: "AirBnB",
#   content: "I heard you are considering banning the service and this would be a mistake. My rent goes up all the time and renting one of my spare rooms is how I'm able to keep my apartment. The real problem with AirBnB guests is when people rent out an entire apartment, rather than an individual room. If people rent out individual rooms, like I do, we generally keep an eye on our guests to make sure they're not destructive or loud. I would like to see the government adopt a more nuanced policy on AirBnB.",
#   city: 'Barcelona',
#   neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
# post7.users << user
# post7.save
# post7.user = citizen_user2
# post7.save


# Spanish complains

post = Post.new(
  title: "Ruido en la calle",
  category: 'ruido',
  content: "Es difícil dormir cuando la gente hace ruido en la calle – fuma, bebe y arma follón. Mi bebé de dos meses se despierta dos veces cada noche por el ruido. He intentado pedir a la gente que haga menos ruido avisando desde mi ventana que estaban molestando y también he hablado con el dueño del local. Esto resulta resolver el problema durante tal vez un día pero al día siguiente vuelve a empezar. ¿Tenemos ordenanzas municipales en contra de esto después de una cierta hora?",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post.users << user
post.save
post.user = citizen_user
post.save


post2 = Post.new(
  title: "No prohibáis AirBnB",
  category: 'AirBnB',
  content: "He oído que estáis considerando prohibir el servicio y creo que sería un error. Mi alquiler no hace más que subir y alquilar una de las habitaciones vacías es mi única solución para poder pagarlo. El verdadero problema con los inquilinos de AirBnB ocurre cuando alquilan un apartamento entero y no cuando alquilan una habitación. Cuando la gente alquila habitaciones, como yo, normalmente nos encargamos de echarles un ojo y de que no sean muy ruidosos ni creen problemas. Me gustaría que el Ayuntamiento tuviera una posición más matizada con AirBnB. ",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post2.users << user2
post2.save
post2.user = citizen_user2
post2.save


post3 = Post.new(
  title: "Aumento de impuestos local",
  category: 'Impuestos',
  content: "Contradiciendo su promesa electoral de no subir los impuestos, la alcaldesa ha subido los impuestos desde un 10% hasta un 12%. Mi tienda este año apenas tendrá beneficios y casi no cubriremos gastos. ¿Cómo justifica la alcaldesa la subida de impuestos? ¿Por qué no reducimos los gastos? ¿Por qué siempre cargar contra la gente que trabaja duro que apenas puede ganarse la vida?",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post3.users << user3
post3.save
post3.user = citizen_user
post3.save


post4 = Post.new(
  title: "Burocracia división de viviendas",
  category: "Permisos",
  content: "Llevo intentando conseguir la licencia para dividir un piso grande en la Calle Consejo de Ciento durante más de un año y medio. Las obras ya están acabadas pero me encuentro con que sólo puedo alquilar uno de los dos pisos debido a la lentitud de la administración.  Desde mi punto de vista en Barcelona necesitamos más pisos y una de las claves sería reducir la burocracias para conseguir este tipo de licencias. ¿Qué se puede hacer al respecto? ¿Cuál es tu opinión sobre el asunto?",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post4.users << user4
post4.save
post4.user = citizen_user2
post4.save


post5 = Post.new(
  title: "Bike lanes",
  category: "bicycles",
  content: "Me gustaría poder circular con la bici por más calles en la ciudad. Encuentro que aunque vamos por el buen camino faltan algunos carriles bici. Por ejemplo, en la zona de Valle Hebrón casi no tenemos carril bici y es incómodo circular por la calzada debido a las rampas y a que los coches suelen ir muy deprisa.",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post5.remote_photo_url = "http://s4.reutersmedia.net/resources/r/?m=02&d=20120808&t=2&i=640081434&w=&fh=545px&fw=&ll=&pl=&sq=&r=2012-08-08T152143Z_1_CBRE87716OC00_RTROPTP_0_GREECE-BICYCLES"
post5.users << user3
post5.save
post5.user = citizen_user3
post5.save


post6 = Post.new(
  title: "Cacas de perros",
  category: "Perros",
  content: "¿Se puede hacer algo respecto a la caca de perro en la calle? ¿Tal vez poner más vigilancia? A pesar de los cárteles, mucha gente no recoge lo que hace su perro, sobretodo en el área del Raval.  He tenido que insistir a mis amigos y familiares que se quiten los zapatos al entrar para que no entren restos.",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post2.remote_photo_url = "http://19mvmv3yn2qc2bdb912o1t2n.wpengine.netdna-cdn.com/science/files/2014/12/PooPower.jpg"
post6.users << user
post6.save
post6.user = citizen_user3
post6.save


post7 = Post.new(
  title: "Palomas",
  category: "Palomas",
  content: "Intentar reducir el número de palomas en la ciudad porque son muy sucias y no crean un ambiente saludable. Propongo proporcionarles unos sitios especiales (tejados) y semillas esterilizantes durante un periodo por ejemplo. ¿Estáis considerando otras opciones?
He oído muchas quejas al respecto.
",
  city: 'Barcelona',
  neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post7.users << user
post7.save
post7.user = citizen_user2
post7.save
