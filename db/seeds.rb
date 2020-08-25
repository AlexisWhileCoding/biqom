# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

file = URI.open('https://images.unsplash.com/photo-1593810450979-79e8584f76b9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80')
activity = Activity.new(name: 'Yoga', description: "A 30-day beginners Yoga activity. Great way to get started and enjoy this popular activity", type: "Sports", days: 30)
activity.photo.attach(io: file, filename: 'yoga.png', content_type: 'image/png')