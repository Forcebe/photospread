class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true
  has_many :pictures
  has_many :albums
  has_many :likes, :dependent => :destroy
end
