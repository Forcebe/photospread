User.destroy_all

u1= User.create :email => 'nick@ga.com', :password => 'chicken', :name => 'Nick', :admin => true
u2= User.create :email => 'rob@ga.com', :password => 'chicken', :name => 'Rob', :admin => true
u3= User.create :email => 'guillaume@ga.com', :password => 'chicken', :name => 'Guillaume', :admin => true

u4= User.create :email => 'sample@ga.com', :password => 'chicken', :name => 'Sam Ample', :admin => false

puts "#{ User.count } users"

Album.destroy_all


images1 = []
15.times do |i|
    url = "http://placekitten.com/600/#{rand(390..410)}"
  images1 << url
end

images2 = []
15.times do |i|
    url = "http://place-puppy.com/600x#{rand(390..410)}"
  images2 << url
end

images3 = []
15.times do |i|
    url = "http://placebear.com/600/#{rand(390..410)}"
  images3 << url
end


a1 = Album.create(
    :name => Faker::Name.name,
    :images => images1
  )
a2 = Album.create(
    :name => Faker::Name.name,
    :images => images2
  )
a3 = Album.create(
    :name => Faker::Name.name,
    :images => images3
  )
puts "Albums and users"
u4.albums << a1 <<a2 << a3
puts "#{ Album.count } albums"


puts "#{a1.images.length} a1 images"
puts "#{a2.images.length} a2 images"
puts "#{a3.images.length} a3 images"
