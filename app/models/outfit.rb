class Outfit < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo
  belongs_to :ocassion
  has_many :ratings
  has_many :stylists, through: :ratings
end
