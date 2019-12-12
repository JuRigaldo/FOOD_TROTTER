# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'cleaning database...'
Restaurant.destroy_all
Specialty.destroy_all
SpecialtyRestaurant.destroy_all
User.destroy_all
Game.destroy_all

categories = ["Accompagnement", "Burger", "Curry", "Dessert", "Fruits de mer", "Friture", "Insectes", "Nouilles", "Oeuf", "Pain", "Pâtes", "Poisson", "Ragoût", "Ravioli", "Riz", "Sandwich", "Snack", "Soupe", "Street food", "Viande", "Volaille"]
timetoeats = ["Petit-déjeuner", "Déjeuner/ Dîner", "Goûter", "Boire"]


url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575540381/okonomiyaki.jpg'
okonomiyaki = Specialty.new(name: 'Okonomiyaki', description: "Du japonais okonomi qui signifie 'ce que vous voulez', c'est 'ZE' plat star à Osaka !
Il contient du chou, de la viande (du porc en général) ou du poisson réunis dans une pâte qui s'apparente un peu à notre pâte à crêpe. Tout ce petit monde va venir cuire ensuite sur une plaque chauffante.
Sachez que dans la plupart des restaurants, il est possible que vous mettiez la main à la pâte (muahaha) en la cuisant vous-même !", country: 'Japon', city: "Osaka", category_list: "Oeuf, Poisson, Viande", timetoeat_list: "Déjeuner/ Dîner", point: 100 )
okonomiyaki.remote_photo_url = url
okonomiyaki.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575543971/ramen.jpg'
ramen = Specialty.new(name: 'Ramen', description: 'Plat préféré de Naruto, les ramen sont des nouilles servies dans un bouillon. Elles sont généralement accompagnées de légumes, viande (plutôt du porc) ou poisson. A savoir : il y a BEAUCOUP de versions de ramen au Japon. Elles varient selon les régions. ', country: 'Japon', category_list: "Nouilles, Pâtes, Soupe, Poisson, Viande", timetoeat_list: "Déjeuner/ Dîner", point: 100 )
ramen.remote_photo_url = url
ramen.save
url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575543971/ramen.jpg'
ramen = Specialty.new(name: 'Ramen', description: 'Plat préféré de Naruto, les ramen sont des nouilles servies dans un bouillon. Elles sont généralement accompagnées de légumes, viande (plutôt du porc) ou poisson. A savoir : il y a BEAUCOUP de versions de ramen au Japon. Elles varient selon les régions. ', country: 'Japon', category_list: "Nouilles, Pâtes, Soupe, Poisson, Viande", timetoeat_list: "Déjeuner/ Dîner", point: 100 )
ramen.remote_photo_url = url
ramen.save
url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575540383/takoyaki.jpg'
takoyaki = Specialty.new(name: 'Takoyaki', description: "Les takoyakis sont un élément phare de la street food japonaise et particulièrement d'Osaka. Ce sont des petites boules (genre balle de ping-pong), composées de chou et de morceaux de poulpe. Si tu n'es pas amateur de bêbêtes à tentacules, oublie ce qu'on vient d'écrire et teste quand même, tout est bien caché dans la pâte !", country: 'Japon', city: 'Osaka', category_list: "Fruits de mer, Poisson, Street Food", timetoeat_list: "Déjeuner/ Dîner, Goûter", point: 100)
takoyaki.remote_photo_url = url
takoyaki.save
url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575558165/sushi.jpg'
sushi = Specialty.new(name: 'Sushi', description: "Tu pensais connaître les sushis ? Grave erreur… Déjà tu risques de les trouver meilleurs ici (forcément). Ensuite, savais-tu qu'il existe des centaines de variétés de sushis ? Que respecter un sushi c'est le manger avec les doigts ? Qu'il y a un ordre à respecter ?... On n'en dit pas plus car c'est sur place qu'on mesure les différences avec nos expériences occidentales.", country: "Japon", category_list: "Riz, Poisson", timetoeat_list: "Déjeuner/ Dîner", point: 100)
sushi.remote_photo_url = url
sushi.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575558260/Onigiri.jpg'
onigiri = Specialty.new(name: 'Onigiri', description: "Un petit snack pas cher mais savoureux et réconfortant. Il s'agit d'une boulette de riz, généralement enveloppée dans une algue et fourrée avec du poisson ou de la prune salée. Elle peut se présenter sous forme de triangle ou de boule ou de galette. On en trouve un peu partout dans les supérettes.", country: "Japon", category_list: "Riz, Poisson, Snack", timetoeat_list: "Goûter", point: 100)
onigiri.remote_photo_url = url
onigiri.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575816684/kobe_r568vi.jpg'
kobe = Specialty.new(name: 'Boeuf de Kobe', description: "Tu as sûrement déjà entendu parler du bœuf de Kobé ? Si non, sache que c'est la crème de la crème en matière de bœuf. On raconte même que les bêtes seraient massés et nourris à la bière. Evidemment, le prix suit aussi cette réputation de luxe. Il y a plusieurs classifications, à toi de choisir selon tes goûts... et ton budget.", country: 'Japon', region: 'Kansai', city: "Kobé", category_list: "Viande", timetoeat_list: "Déjeuner/ Dîner", point: 100)
kobe.remote_photo_url = url
kobe.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575558414/Nama-Yatsuhashi-500x375_tgvvdq.jpg'
yatsuhashi = Specialty.new(name: 'Yatsuhashi', description: 'Les yatsuhashi sont des confiseries triangulaires faites de farine de riz et généralement fourrées à la pâte de haricot rouge. Présentées de façon hyper mignonne dans des jolies boîtes, elles constituent le souvenir idéal à ramener.', country: 'Japon', region: 'Kansai', city: "Kyoto", category_list: "Dessert", timetoeat_list: "Goûter", point: 100)
yatsuhashi.remote_photo_url = url
yatsuhashi.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575558500/gyosas_bvuqqg.jpg'
gyozas = Specialty.new(name: 'Gyozas', description: "Dérivé du ravioli chinois, le gyoza est un mets très populaire au Japon. Il est généralement fourré de légumes et de porc. Il peut être rissolé, bouilli ou frit. Ils sont servis en général par 6 ou 12 et s'accompagnent de sauce soja.", country: "Japon", category_list: "Volaille, Viande, Ravioli", timetoeat_list: "Déjeuner/ Dîner", point: 100)
gyozas.remote_photo_url = url
gyozas.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575540379/teriyaki.jpg'
teriyaki = Specialty.new(name: 'Teriyaki', description: "Il s'agit de viande, poisson ou fruits de mer cuits dans une sauce soja sucrée avec du mirin. C'est aussi le nom du coup qu'on donne à la sauce que l'on peut facilement faire soi-même.", country: "Japon", category_list: "Viande, Poisson, Fruits de mer", timetoeat_list: "Déjeuner/ Dîner", point: 100)
teriyaki.remote_photo_url = url
teriyaki.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575540386/mochi.jpg'
mochi = Specialty.new(name: 'Mochi', description: "Le mochi est un gâteau en forme de boulette à base de riz gluant. Il est généralement fourré à la pâte d'haricot rouge. C'est une spécialité surtout consommée pour les fêtes, principalement en Janvier.", country: "Japon", category_list: "Riz, Dessert" , timetoeat_list: "Goûter", point: 500)
mochi.remote_photo_url = url
mochi.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575826317/inarizushi.jpg'
inarizushi = Specialty.new(name: 'Inarizushi', description: "Les inarizushi sont constitués d'une poche de tofu frit sucré et remplie de riz vinaigré. Ils ont été inventés à Tokyo par un chef qui souhaitait les associer aux temples inari (dédiés à la déesse de la croissance du riz).", country: "Japon", region: "Kanto", city: "Tokyo", category_list: "Riz, Friture" , timetoeat_list: "Déjeuner/Dîner", point: 100)
inarizushi.remote_photo_url = url
inarizushi.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575827374/1570648_a7806bdf6d1ed4d85d6ca2f395bcc45f_wnwex9.jpg'
fugu = Specialty.new(name: 'Fugu', description: "Tu es un food trotter intrépide ? Le fugu, aussi appelé poisson globe contient un poison mortel. Il doit être vidé et débarrassé de ses parties toxiques par un chef spécialisé et possédant une licence. Il est généralement dégusté en sashimi. Attention, c'est un mets plutôt cher.", country: "Japon", region: "Kansai", city: "Osaka", category_list: "Poisson" , timetoeat_list: "Déjeuner/Dîner", point: 100)
fugu.remote_photo_url = url
fugu.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575825291/poulpy.jpg'
poulpy = Specialty.new(name: 'Sucette de poulpe', description: "Elle sont généralement laquées à la sauce soja avec... un oeuf de caille dans la tête. Elles se trouvent facilement sur les marchés d'Osaka.", country: "Japon", region: 'Kansai', city: "Osaka", category_list: "Snack" , timetoeat_list: "Goûter", point: 100)
poulpy.remote_photo_url = url
poulpy.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575819209/kushikatsu.jpg'
kushikatsu = Specialty.new(name: 'Kushikatsu', description: "Des fritures typiques d'Osaka au boeuf, porc, poulet, fruits de mer ou légumes. Elles sont en général servies sur des batônnets avec de la sauce Worcestshire. C'était un plat populaire pendant la guerre et il reste un des emblèmes de la street food aujourd'hui.", country: "Japon", region: 'Kansai', city: "Osaka", category_list: "Viande, Fruits de mer, Street food, Friture" , timetoeat_list: "Déjeuner/Dîner", point: 100)
kushikatsu.remote_photo_url = url
kushikatsu.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575825687/ochazuke.jpg'
ochazuke = Specialty.new(name: 'Ochazuke', description: "Un plat très simple qui se prépare en versant de l'eau chaude ou du thé vert sur un bol de riz. Il peut être agrémenté de sésame ou poisson. Attention, si on vous le propose à Kyoto c'est probablement parce que vous avez abusé de l'hospitalité de vos hôtes et qu'on vous demande poliment de partir.", country: "Japon", region: 'Kansai', city: "Kyoto", category_list: "Riz" , timetoeat_list: "Déjeuner/Dîner", point: 100)
ochazuke.remote_photo_url = url
ochazuke.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575819836/rikuro.jpg'
rikuro = Specialty.new(name: "Rikuro's cheesecake", description: "Il s'agit d'un gâteau ultra-moelleux (même qu'il gigote au toucher !) exclusif à Osaka. Très doux et crémeux, ils sont confectionnés le jour même à partir d'un fromage danois haut de gamme. Rien que regarder la mécanique bien huilée des pâtissiers et vendeurs vaut le détour. Dès la 1ère bouchée, on se retrouve sur un petit nuage !", country: "Japon", region: 'Kansai', city: "Osaka", category_list: "Dessert" , timetoeat_list: "Goûter", point: 100)
rikuro.remote_photo_url = url
rikuro.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1576075080/Ajinoya2_ys8rov.jpg'
ajinoya = Restaurant.create!(name: "Ajinoya", address: "1-7-16 Nambo, Chuo-ku, Osaka 542-0076", phone_number: "+ 81 6-6211-0713", recommendation: 245, opening_time: '12h00 à 22h00', latitude: 34.668327, longitude: 135.500917)
ajinoya.remote_photo_url = url
ajinoya.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575722311/okaru.jpg'
okaru = Restaurant.new(name: "Okaru" , address: "1 Chome-9-19 Sennichimae, Chuo Ward, Osaka, 542-0074", phone_number: "+81 6-6211-0985", recommendation: 198, opening_time: '12h00-14h30 17h00-22h00', latitude: 34.667772, longitude: 135.503428)
okaru.remote_photo_url = url
okaru.save

url = 'https://res.cloudinary.com/geraldinefd/image/upload/v1575722356/chibo.jpg'
chibo = Restaurant.new(name: "Chibo", address: "1-5-5 Dotonbori, Chuo-ku, Osaka", phone_number: "+81 6-6212-2211", recommendation: 174, opening_time: '11h00 à 01h00', latitude: 34.669086, longitude: 135.503882)
chibo.remote_photo_url = url
chibo.save

specialty_resto1 = SpecialtyRestaurant.new(restaurant: ajinoya, specialty: okonomiyaki)
specialty_resto1.save
specialty_resto2 = SpecialtyRestaurant.new(restaurant: okaru, specialty: okonomiyaki)
specialty_resto2.save
specialty_resto3 = SpecialtyRestaurant.new(restaurant: chibo, specialty: okonomiyaki)
specialty_resto3.save

user1 = User.create!(username: "Toto", email: "toto@gmail.com", password: "password")

game1 = Game.new(user: user1, specialty: okonomiyaki)
game1.save
game2 = Game.new(user: user1, specialty: mochi)
game2.save
puts '...finished'
