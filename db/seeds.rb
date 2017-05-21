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
Product.create!(title: 'Cranberry',
                description:
                    %{
            Cranberries are often a popular part of Thanksgiving
celebrations in the form of cranberry sauce, cranberry drinks and
dried cranberries added to stuffing, casseroles or dessert.

No one knows for sure how cranberries became associated with holiday
feasts, but historians guess that it had something to do with the Native
Americans, who used cranberries not only for food
and medicine but also to make dyes for clothing and blankets.},
                image_url: 'klyukva1.jpg',
                price: 99.95)
Product.create!(title: 'Raspberry',
                description:
                    %{
            Known as nature's candy, wild raspberries have been
gathered for consumption by humans for thousands of years.
With their rich color, sweet juicy taste, and antioxidant power,
it is no wonder raspberries remain one of the world's most consumed berries.
Raspberries can range in color from the popular red and black varieties to purple, yellow, or golden. Each color berry has a unique
composition of vitamins, minerals, and antioxidants. },
                image_url: 'thumb_170.jpg',
                price: 75.95)
Product.create!(title: 'Cherry',
                description:
                    %{
            A cherry is the fruit of many plants of the genus Prunus, and
is a fleshy drupe (stone fruit).
The cherry fruits of commerce usually are obtained from a limited
number of species such as cultivars of the sweet cherry, Prunus avium. The name 'cherry' also refers to the cherry tree, and is sometimes applied to almonds and visually similar flowering trees in the genus Prunus, as in "ornamental cherry", "cherry blossom", etc. Wild cherry may refer to any of the cherry species growing outside of cultivation, although Prunus avium is often referred to
 specifically by the name "wild cherry" in the British Isles.},
                image_url: 'berry001.jpg',
                price: 45.05)
Product.create!(title: 'Blueberry',
                description:
                    %{
            Blueberries are perennial flowering plants with
indigo-colored berries from the section Cyanococcus within the genus
Vaccinium (a genus that also includes cranberries, bilberries and grouseberries)
. Species in the section Cyanococcus are the most common[1] fruits sold as
"blueberries" and are native to North America (commercially cultivated highbush
blueberries were not introduced into Europe until the 1930s).},
                image_url: 'Blueberry.png',
                price: 76.95)
Product.create!(title: 'Blackberry',
                description:
                    %{
            The blackberry is an edible fruit produced by many
species in the Rubus genus in the Rosaceae family, hybrids among
 these species within the Rubus subgenus, and hybrids between the
Rubus and Idaeobatus subgenera. The taxonomy of the blackberries has
historically been confused because of hybridization and apomixis, so
 that species have often been grouped together and called species aggregates.
For example, the entire subgenus Rubus has been called the Rubus fruticosus
aggregate, although the species R.
fruticosus is considered a synonym of R. plicatus.},
                image_url: 'blackberries.jpg',
                price: 76.95)
Blog.create!(title: 'The best places for berry picking near Chicago',
                description:
                    %{
            Berry picking is an essential summer pastime, especially for
 families. But even if you live smack dab in the action in Chicago, you can
still take a day trip to find a farm where you can pick your own strawberries,
raspberries, blueberries and more. Many spots also have other fun, kid-friendly
attractions like petting zoos or wagon rides. Bring those berries home to make
your own dessert when you just can't get out to nab one of the city's best pies,
 or blend a handful up for your own take on one of Chicago's
best frozen cocktails, long after the kids have fallen asleep.},

               )
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')