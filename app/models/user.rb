class User < ApplicationRecord
  has_secure_password
  validates :email, :name, :presence => true, :uniqueness => true
  has_many :pictures
  has_many :albums
  has_many :likes, :dependent => :destroy
end
