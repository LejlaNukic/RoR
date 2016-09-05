# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
u=User.new(username: "admin", mail:"admin@etf.unsa.ba", password:"admin",password_confirmation: "admin")
u.save

Product.create(  name: 'Cipela 2' , description: 'Dummy1' , image_url: 'https://i.ytimg.com/vi/EeaaaUDaHQw/maxresdefault.jpg' , price:60.00  )
Product.create(  name: 'Cipela 3' , description: 'Dummy2' , image_url: 'http://timpfest.org/wp-content/uploads/2013/09/Converse-Shoes.jpg' , price:70.00  )
Product.create(  name: 'Cipela 5' , description: 'Dummy3' , image_url: 'http://www.vegetarian-shoes.co.uk/Portals/42/product/images/prd06da61c8-f8a9-402a-8590-fbec98bfbf1a.jpg' , price:90.00  )
Product.create(  name: 'Cipela 6' , description: 'Dummy4' , image_url: 'https://iakodaeko.files.wordpress.com/2010/09/dunk-high-pro-sb-blk-white-nike-sb-mens-shoes-0.jpg' , price:100.00  )
Product.create(  name: 'Cipela 7' , description: 'Dummy5' , image_url: 'http://www.swellshoesmall.com/images/3/GccEW4/TO111C021-503@1.1.jpg' , price:110.00  )
Product.create(  name: 'Cipela 8' , description: 'Dummy6' , image_url: 'http://g02.a.alicdn.com/kf/HTB1t2B.KVXXXXbYXVXXq6xXFXXXE/Women-boots-botas-femininas-2015-new-snow-boots-winter-women-fashion-ankle-boots-for-women-shoes.jpg' , price:100.00  )
Product.create(  name: 'Cipela 9' , description: 'Dummy7' , image_url: 'http://www.sharebrandshop.com/images/Adidas/Rayado/7-adidas-Rayado-Low-Skate-Men-Shoe_1.jpg' , price:90.00  )
Product.create(  name: 'Cipela 11' , description: 'Dummy8' , image_url: 'http://i1.ykcdn.com/2013/s/free/10/2/Nike-F4V208.jpg' , price:70.00  )
Product.create(  name: 'Cipela 12' , description: 'Dummy9' , image_url: 'http://s2.thcdn.com/productimg/0/600/600/66/10644266-1350915850-252983.jpg' , price:60.00  )
Product.create(  name: 'Cipela 14' , description: 'Dummy10' , image_url: 'https://s-media-cache-ak0.pinimg.com/736x/8b/f2/2c/8bf22c92ea86ad03b49bbe1b2350180b.jpg' , price:55.00  )
Product.create(  name: 'Cipela 1' , description: 'Dummy11' , image_url: 'http://discountedchildrensshoes.com/wp-content/uploads/2013/05/toddler-shoes6.jpg' , price:50.00  )
Product.create(  name: 'Cipela 4' , description: 'Dummy12' , image_url: 'http://www.newnikeshoes.us/images/products/vxbR6m0FvYcefB8.jpg' , price:80.00  )
Product.create(  name: 'Cipela 10' , description: 'Dummy13' , image_url: 'http://thebestfashionblog.com/wp-content/uploads/2013/03/Camper-Kids-Shoes-Spring-Summer-2013-Lookbook-26.jpg' , price:80.00  )
Product.create(  name: 'Cipela 13' , description: 'Dummy14' , image_url: 'https://www.dvsshoes.com/media/products/aversa-ctx-kids-navy-gum-canvas-1.png' , price:50.00  )

Brand.create([{name: "Nike"},{name: "Adidas"},{name: "Vans"},{name: "Tommy Hilfiger"},{name: "Timberland"},{name: "Puma"},{name: "Skechers"}])

(1..14).each do |n|
  s=Product.find(n)
  s.brand=Brand.find(rand(1..7))
  s.save
end

Category.create([{name:"Muska obuca"},{name:"Zenska obuca"},{name: "Djecija obuca"}])


# <--------------  muska obuca  ---------------------------->
s=Product.find(1)
c=Category.find(1)
s.category=c
s.save
s=Product.find(2)
c=Category.find(1)
s.category=c
s.save
s=Product.find(3)
c=Category.find(1)
s.category=c
s.save
s=Product.find(4)
c=Category.find(1)
s.category=c
s.save
s=Product.find(7)
c=Category.find(1)
s.category=c
s.save
s=Product.find(10)
c=Category.find(1)
s.category=c
s.save

# <--------------  zenska obuca  ---------------------------->
s=Product.find(5)
c=Category.find(2)
s.category=c
s.save
s=Product.find(6)
c=Category.find(2)
s.category=c
s.save
s=Product.find(8)
c=Category.find(2)
s.category=c
s.save
s=Product.find(9)
c=Category.find(2)
s.category=c
s.save

# <--------------  djecija obuca  ---------------------------->
s=Product.find(11)
c=Category.find(3)
s.category=c
s.save
s=Product.find(12)
c=Category.find(3)
s.category=c
s.save
s=Product.find(13)
c=Category.find(3)
s.category=c
s.save
s=Product.find(14)
c=Category.find(3)
s.category=c
s.save


Color.create(name: "Crvena", password: "#ff0000")
Color.create(name: "Plava", password: "#0066ff")
Color.create(name: "Svijetloplava", password: "#99ccff")
Color.create(name: "Zuta", password: "#ffff00")
Color.create(name: "Bijela", password: "#ffffff")
Color.create(name: "Narandzasta", password: "#ff6600")
Color.create(name: "Zelena", password: "#33cc33")
Color.create(name: "Smedja", password: "#804000")
Color.create(name: "Ljubicasta", password: "#cc33ff")
Color.create(name: "Crna", password: "#000000")
Color.create(name: "Siva", password: "#808080")
Color.create(name: "Roza", password: "#ff99c2")

Product.all.each do |product|
  (1..10).each do |n|
    p=ProductVariant.create(color: Color.find(rand(1..12)),size: rand(32..49), quantity: rand(20..50))
    product.product_variants<<p
    product.save
  end
end

=end