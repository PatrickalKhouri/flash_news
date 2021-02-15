# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

News.destroy_all


puts 'creating news'

news_1 = News.create(user: User.first, title_es: "Fluminense en Libertadores", title_pt: "Fluminense na libertadores",
content_es: "El Flumininense llego a Copa Libertadores pela primeira vez desde 2013",
content_pt: "O Fluminense se classificou para a Copa Libertadores pela primeira vez desde 2013")

news_2 = News.create(user: User.first, title_es: "Vasco en B", title_pt: "Vasco na B",
content_es: "El Vasco da Gama se caió a la quarta vez para la b",
content_pt: "O Vasco da Gama caiu pela 4a vez para a 2a divisão do Brasileirão")

  
news_3 = News.create(user: User.second, title_es: "Palmeiras Campeon", title_pt: "Palmeiras Campeão",
content_es: "Palmeiras gano por la 2a vez la Copa Liberadores",
content_pt: "O Palmeiras é bi campeão da liberadores! Venceu o Santos por 1x0")

puts 'news created'