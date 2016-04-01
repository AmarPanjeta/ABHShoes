# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([   {name: 'Chicago'}  ,   {name: 'Copenhagen'}   ])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
u=User.new(username: "admin", email:"admin@atlant.ba", name: "admin", surname:"admin", password:"admin",password_confirmation: "admin",admin:true)
u.save

Shoe.create(  name: 'Cipela 2' , description: 'Dummy1' , imgurl: 'https://i.ytimg.com/vi/EeaaaUDaHQw/maxresdefault.jpg' , price:60.00  )
Shoe.create(  name: 'Cipela 3' , description: 'Dummy2' , imgurl: 'http://timpfest.org/wp-content/uploads/2013/09/Converse-Shoes.jpg' , price:70.00  )
Shoe.create(  name: 'Cipela 5' , description: 'Dummy3' , imgurl: 'http://www.vegetarian-shoes.co.uk/Portals/42/product/images/prd06da61c8-f8a9-402a-8590-fbec98bfbf1a.jpg' , price:90.00  )
Shoe.create(  name: 'Cipela 6' , description: 'Dummy4' , imgurl: 'https://iakodaeko.files.wordpress.com/2010/09/dunk-high-pro-sb-blk-white-nike-sb-mens-shoes-0.jpg' , price:100.00  )
Shoe.create(  name: 'Cipela 7' , description: 'Dummy5' , imgurl: 'http://www.swellshoesmall.com/images/3/GccEW4/TO111C021-503@1.1.jpg' , price:110.00  )
Shoe.create(  name: 'Cipela 8' , description: 'Dummy6' , imgurl: 'http://g02.a.alicdn.com/kf/HTB1t2B.KVXXXXbYXVXXq6xXFXXXE/Women-boots-botas-femininas-2015-new-snow-boots-winter-women-fashion-ankle-boots-for-women-shoes.jpg' , price:100.00  )
Shoe.create(  name: 'Cipela 9' , description: 'Dummy7' , imgurl: 'http://www.sharebrandshop.com/images/Adidas/Rayado/7-adidas-Rayado-Low-Skate-Men-Shoe_1.jpg' , price:90.00  )
Shoe.create(  name: 'Cipela 11' , description: 'Dummy8' , imgurl: 'http://i1.ykcdn.com/2013/s/free/10/2/Nike-F4V208.jpg' , price:70.00  )
Shoe.create(  name: 'Cipela 12' , description: 'Dummy9' , imgurl: 'http://s2.thcdn.com/productimg/0/600/600/66/10644266-1350915850-252983.jpg' , price:60.00  )
Shoe.create(  name: 'Cipela 14' , description: 'Dummy10' , imgurl: 'https://s-media-cache-ak0.pinimg.com/736x/8b/f2/2c/8bf22c92ea86ad03b49bbe1b2350180b.jpg' , price:55.00  )
Shoe.create(  name: 'Cipela 1' , description: 'Dummy11' , imgurl: 'http://discountedchildrensshoes.com/wp-content/uploads/2013/05/toddler-shoes6.jpg' , price:50.00  )
Shoe.create(  name: 'Cipela 4' , description: 'Dummy12' , imgurl: 'http://www.newnikeshoes.us/images/products/vxbR6m0FvYcefB8.jpg' , price:80.00  )
Shoe.create(  name: 'Cipela 10' , description: 'Dummy13' , imgurl: 'http://thebestfashionblog.com/wp-content/uploads/2013/03/Camper-Kids-Shoes-Spring-Summer-2013-Lookbook-26.jpg' , price:80.00  )
Shoe.create(  name: 'Cipela 13' , description: 'Dummy14' , imgurl: 'https://www.dvsshoes.com/media/products/aversa-ctx-kids-navy-gum-canvas-1.png' , price:50.00  )


Brand.create([{name: "Nike"},{name: "Adidas"},{name: "Vans"},{name: "Tommy Hilfiger"},{name: "Timberland"},{name: "Puma"},{name: "Skechers"}])

(1..14).each do |n|
  s=Shoe.find(n)
  s.brand=Brand.find(rand(1..7))
  s.save
end

Category.create([{name:"Muska obuca"},{name:"Zenska obuca"},{name: "Djecija obuca"},{name: "Dodaci"}])


# <--------------  muska obuca  ---------------------------->
s=Shoe.find(1)
c=Category.find(1)
s.category=c
s.save

s=Shoe.find(2)
c=Category.find(1)
s.category=c
s.save

s=Shoe.find(3)
c=Category.find(1)
s.category=c
s.save

s=Shoe.find(4)
c=Category.find(1)
s.category=c
s.save

s=Shoe.find(7)
c=Category.find(1)
s.category=c
s.save

s=Shoe.find(10)
c=Category.find(1)
s.category=c
s.save

# <--------------  zenska obuca  ---------------------------->
s=Shoe.find(5)
c=Category.find(2)
s.category=c
s.save

s=Shoe.find(6)
c=Category.find(2)
s.category=c
s.save

s=Shoe.find(8)
c=Category.find(2)
s.category=c
s.save

s=Shoe.find(9)
c=Category.find(2)
s.category=c
s.save

# <--------------  djecija obuca  ---------------------------->
s=Shoe.find(11)
c=Category.find(3)
s.category=c
s.save

s=Shoe.find(12)
c=Category.find(3)
s.category=c
s.save

s=Shoe.find(13)
c=Category.find(3)
s.category=c
s.save

s=Shoe.find(14)
c=Category.find(3)
s.category=c
s.save


Color.create(name: "Crvena", hex: "#ff0000")
Color.create(name: "Plava", hex: "#0066ff")
Color.create(name: "Svijetloplava", hex: "#99ccff")
Color.create(name: "Zuta", hex: "#ffff00")
Color.create(name: "Bijela", hex: "#ffffff")
Color.create(name: "Narandzasta", hex: "#ff6600")
Color.create(name: "Zelena", hex: "#33cc33")
Color.create(name: "Smedja", hex: "#804000")
Color.create(name: "Ljubicasta", hex: "#cc33ff")
Color.create(name: "Crna", hex: "#000000")
Color.create(name: "Siva", hex: "#808080")
Color.create(name: "Roza", hex: "#ff99c2")


Shoe.all.each do |shoe|
  (1..10).each do |n|
    p=ProductVariant.create(color: Color.find(rand(1..12)),size: rand(32..49))
    shoe.product_variants<<p
    shoe.save
  end
end

=end

Shoe.all.each do |shoe|
  shoe.product_variants.each do |pv|
    if shoe.category.id==1
      pv.size=rand(39..52)
      pv.save
    elsif shoe.category.id==2
      pv.size=rand(36..42)
      pv.save
    else
      pv.size=rand(21..35)
      pv.save
    end
  end
  shoe.save
end
