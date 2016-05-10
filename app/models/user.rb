class User < ActiveRecord::Base
  has_secure_password
  has_many :outfits
  has_many :ratings, through: :outfits
end
