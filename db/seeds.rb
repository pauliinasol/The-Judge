# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create users
user = User.new
user.user_name = 'Harry'
user.email = '3535@ga.com'
user.password_digest = '123'
user.save

user = User.new
user.user_name = 'Flo'
user.email = '123@ga.com'
user.password_digest = '123'
user.save

# Create occasions
occasion = Occasion.new
occasion.occasion_name = 'first date'
occasion.save

occasion = Occasion.new
occasion.occasion_name = 'job interview'
occasion.save

# Create Outfits
outfit = Outfit.new
outfit.user_id = '1'
outfit.occasion_id = '2'
outfit.rating_id = '1'
outfit.photo = 'http://www.savantsourcing.com/wp-content/uploads/2014/12/interview-success.jpg'
outfit.save

outfit = Outfit.new
outfit.user_id = '2'
outfit.occasion_id = '1'
outfit.rating_id = '2'
outfit.photo = 'http://www.realmendrinkwhiskey.com/wp-content/uploads/2014/06/first-date.jpg'
outfit.save

# Create rating
rating = Rating.new
rating.outfit_id = '1'
rating.positive = '2'
rating.negative = '3'
rating.save

rating = Rating.new
rating.outfit_id = '2'
rating.positive = '5'
rating.negative = '2'
rating.save
