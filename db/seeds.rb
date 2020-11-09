User.destroy_all

u1= User.create :email => 'nick@ga.com', :password => 'chicken', :name => 'Nick'
u1= User.create :email => 'rob@ga.com', :password => 'chicken', :name => 'Rob'
u1= User.create :email => 'guillaume@ga.com', :password => 'chicken', :name => 'Guillaume'

puts "#{ User.count } users"
