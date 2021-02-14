# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

News.destroy_all



news_1 = News.create(user: User.first, title_es: "Fluminense en Libertadores", title_pt: "Fluminense na libertadores",
description_es: "El Flumininense llego a Copa Libertadores pela primeira vez desde 2013",
description_pt: "O Fluminense se classificou para a Copa Libertadores pela primeira vez desde 2013")