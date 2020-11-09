class User < ApplicationRecord
<<<<<<< HEAD
  has_secure_password
  validates :email, :name, :presence => true, :uniqueness => true
  has_many :pictures
  has_many :albums
  has_many :likes, :dependent => :destroy
=======
  has_secure_password #required for bcrypt
>>>>>>> 1325e5f088f94217ba306eed06c8f309d0a370e8
end
