class Outfit < ActiveRecord::Base
  belongs_to :user
  belongs_to :occasion
  has_many :likes
  has_many :dislikes
end
