class Outfit < ActiveRecord::Base
  belongs_to :user
  belongs_to :ocassion
  has_many :ratings
end
