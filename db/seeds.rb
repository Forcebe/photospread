User.destroy_all

u1= User.create :email => 'nick@ga.com', :password => 'chicken', :name => 'Nick', :admin => true
u2= User.create :email => 'rob@ga.com', :password => 'chicken', :name => 'Rob', :admin => true
u3= User.create :email => 'guillaume@ga.com', :password => 'chicken', :name => 'Guillaume', :admin => true

u4= User.create :email => 'sample@ga.com', :password => 'chicken', :name => 'Sam Ample', :admin => false

puts "#{ User.count } users"

Album.destroy_all


a1 = Album.create(
    :name => Faker::Name.name
  )
a2 = Album.create(
    :name => Faker::Name.name
  )
a3 = Album.create(
    :name => Faker::Name.name
  )
puts "Albums and users"
u4.albums << a1 <<a2 << a3
puts "#{ Album.count } albums"

Picture.destroy_all
puts "Pictures and Albums"

15.times do |i|
  p = "http://placekitten.com/600/#{rand(390..410)}"
  a1.images << p
end
15.times do |i|
  p = "http://placekitten.com/600/#{rand(390..410)}"
  a2.images << p
end
15.times do |i|
  p = "http://placekitten.com/600/#{rand(390..410)}"
  a3.images << p
end

puts "#{ Picture.count } pictures"
