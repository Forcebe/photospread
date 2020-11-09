User.destroy_all

u1= User.create :email => 'nick@ga.com', :password => 'chicken', :name => 'Nick', :admin => true
u2= User.create :email => 'rob@ga.com', :password => 'chicken', :name => 'Rob', :admin => true
u3= User.create :email => 'guillaume@ga.com', :password => 'chicken', :name => 'Guillaume', :admin => true

puts "#{ User.count } users"
