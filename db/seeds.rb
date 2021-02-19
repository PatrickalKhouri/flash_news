# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

News.destroy_all
Tag.destroy_all


puts 'creating news'

news_1 = News.create(user: User.first, title_es: "Fluminense en Libertadores", title_pt: "Fluminense na libertadores",
content_es: "El Flumininense llego a Copa Libertadores pela primeira vez desde 2013",
content_pt: "O Fluminense se classificou para a Copa Libertadores pela primeira vez desde 2013")
file = URI.open('https://conteudo.imguol.com.br/c/esporte/2d/2021/02/11/martinelli-volante-do-fluminense-1613085487181_v2_300x225.jpg')
news_1.photo.attach(io: file, filename: 'flu_liberta.jpg')

news_2 = News.create(user: User.first, title_es: "Vasco en B", title_pt: "Vasco na B",
content_es: "El Vasco da Gama se caió a la quarta vez para la b",
content_pt: "O Vasco da Gama caiu pela 4a vez para a 2a divisão do Brasileirão")
file = URI.open('https://uploads.metropoles.com/wp-content/uploads/2021/02/15213859/Vasco-x-Inter-1-600x400.jpg')
news_2.photo.attach(io: file, filename: 'vasco_b.jpg')

  
news_3 = News.create(user: User.second, title_es: "Palmeiras Campeon", title_pt: "Palmeiras Campeão",
content_es: "Palmeiras gano por la 2a vez la Copa Liberadores",
content_pt: "O Palmeiras é bi campeão da liberadores! Venceu o Santos por 1x0")
file = URI.open('https://www.lance.com.br/files/article_main/uploads/2020/10/23/5f934aa7e3969.jpeg')
news_3.photo.attach(io: file, filename: 'flu_liberta.jpg')

puts 'news created'

puts "Creating Tags"

Tag.create(name: "Recipe", language: 'PT')
Tag.create(name: "Travel", language: 'PT')
Tag.create(name: "Fashion/Beauty", language: 'PT')
Tag.create(name: "Humour", language: 'PT')

puts "Tags Created!"