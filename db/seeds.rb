# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# admin = User.create(nick: 'admin', email: 'admin@admin',
#                     password: 'admin', password_confirmation: 'Admin', role: 'admin')
Product.create!(title: 'Strawberry',
                description:
                    %{
            Strawberry is a widely grown hybrid species of the genus Fragaria
(collectively known as the strawberries).
It is cultivated worldwide for its fruit.},
                image_url: 'strawberry.jpg',
                price: 49.95)