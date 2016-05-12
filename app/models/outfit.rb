class Outfit < ActiveRecord::Base
  mount_uploader :photo, ImageUploader

  belongs_to :user
  belongs_to :occasion
  has_many :likes
  has_many :dislikes
end
