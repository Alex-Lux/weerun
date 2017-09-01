# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Booking.destroy_all
# Pet.destroy_all
# PethomeReview.destroy_all
# PetsitterReview.destroy_all
Run.destroy_all
User.destroy_all
RunBookings.destroy_all

# puts 'Creating 10 fake runners...'

#
   # gender: ["male", "female"].sample
  # )


#rand(0..1).times do
#
  # rand(1..6).times do
  #   pet = Pet.new(
  #     name:    "#{Faker::Name.prefix} #{Faker::DragonBall.character}",
  #     pethome_id: pethome.id,
  #     category: ["dog", "elderly dog", "horse", "elderly cat", "hamster", "puppy", "kitten", "cat", "bird", "snake", "fish", "turtle", "chinchilla", "rat", "rabbit"].sample,
  #     breed: ["friendly breed", "sorta scary breed", "polite type"].sample,
  #     weight: rand(5..100).to_s + "kg",
  #     size: "#{Faker::Address.street_address}, #{Faker::Address.city}",
  #     color:  Faker::Color.color_name,
  #     remote_photo_url: Faker::LoremPixel.image("500x600", false, 'animals'),
  #     observations: Faker::Lorem.sentence
  #   )
  # pet.save!

  # end

#end

# pethome_review = PethomeReview.create({booking_id: 1, rating: 3, comment: "greaaaat"})

# pethome_review = PethomeReview.create({booking_id: 2, rating: 4, comment: "fabulous time"})

# pethome_review = PethomeReview.create({booking_id: 3, rating: 5, comment: "fabulous"})



# petsitter_review = PetsitterReview.create({booking_id: 1, rating: 4, comment: "greaaaat"})

# petsitter_review = PetsitterReview.create({booking_id: 2, rating: 5, comment: "10 out o 10"})

# petsitter_review = PetsitterReview.create({booking_id: 3, rating: 2, comment: "some issues"})


# booking = Booking.create({starting_date: Date.new(2017, 8, 29), ending_date: Date.new(2017, 9, 29), user_id: 1, pethome_id: 1})

# booking = Booking.create({starting_date: Date.new(2017, 9, 29), ending_date: Date.new(2017, 10, 29), user_id: 2, pethome_id: 2})

# booking = Booking.create({starting_date: Date.new(2017, 10, 29), ending_date: Date.new(2017, 11, 29), user_id: 3, pethome_id: 3})

