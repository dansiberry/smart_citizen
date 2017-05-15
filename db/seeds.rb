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
