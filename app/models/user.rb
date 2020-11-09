class User < ApplicationRecord
  has_secure_password #required for bcrypt
end
