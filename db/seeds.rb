# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# products
# Product.destroy_all
# product = Product.create(name: "Ocarina of Time", price: 30, image_url: "https://upload.wikimedia.org/wikipedia/en/5/57/The_Legend_of_Zelda_Ocarina_of_Time.jpg", description: "The Legend of Zelda: Ocarina of Time is an action-adventure game developed and published by Nintendo for the Nintendo 64.")

# product = Product.create(name: "Banjo Kazooie", price: 25, image_url: "https://upload.wikimedia.org/wikipedia/en/1/12/Banjo_Kazooie_Cover.png", description: "Banjo-Kazooie is a 1998 platform game developed by Rare and published by Nintendo for the Nintendo 64.")

# product = Product.create(name: "Conker's Bad Fur Day", price: 115, image_url: "https://m.media-amazon.com/images/I/516wluEIzmL.jpg", description: "Conker's Bad Fur Day is a 2001 platform game developed and published by Rare for the Nintendo 64. ")

# product = Product.create(name: "Super Mario 64", price: 31, image_url: "https://upload.wikimedia.org/wikipedia/en/6/6a/Super_Mario_64_box_cover.jpg", description: "Super Mario 64 is a platform game developed and published by Nintendo for the Nintendo 64.")

# product = Product.create(name: "Goldeneye 007", price: 25, image_url: "https://upload.wikimedia.org/wikipedia/en/3/36/GoldenEye007box.jpg", description: "GoldenEye 007 is a 1997 first-person shooter video game developed by Rare and published by Nintendo for the Nintendo 64.")

# product = Product.create(name: "Mario Kart 64", price: 40, image_url: "https://upload.wikimedia.org/wikipedia/en/a/a1/Mario_Kart_64.jpg", description: "Mario Kart 64 is a kart racing video game developed and published by Nintendo for the Nintendo 64.")

# product = Product.create(name: "Banjo Tooie", price: 29, image_url: "https://upload.wikimedia.org/wikipedia/en/4/41/Banjo-Tooie_Coverart.png", description: "Banjo-Tooie is a platform video game developed by Rare and originally released for the Nintendo 64 console in 2000.")

# product = Product.create(name: "Mario Party", price: 32, image_url: "https://i.ebayimg.com/images/g/HUcAAOSwP9djWCTF/s-l1200.webp", description: "Mario Party is a party video game developed by Hudson Soft and published by Nintendo for the Nintendo 64.")

#suppliers
nintendo = Supplier.create(name: "Nintendo", email: "support@nintendo.com", phone_number: "1-800-255-3700")

xbox = Supplier.create(name: "Xbox", email: "support.xbox.com/en-US/contact-us", phone_number: "1-800-469-9269")
