class User < ActiveRecord::Base
  has_secure_password
  has_many :ocassions
  has_many :appointments, through: :participants
  has_many :participants
end
