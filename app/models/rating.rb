class Rating < ActiveRecord::Base
  has_many :outfits
  has_many :stylists
end
