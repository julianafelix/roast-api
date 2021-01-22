class User < ApplicationRecord
  has_secure_password
  has_many :roast_profiles
end
