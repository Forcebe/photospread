class Album < ApplicationRecord
  has_many :pictures
  belongs_to :user, :optional => true
end
