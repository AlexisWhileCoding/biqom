# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

challenge = Challenge.create(name: "Sun salutation", content: "https://www.youtube.com/embed/FPjppcOquE4", source: "Youtube: Well+Good", source_type: "Video", duration: 4, position: 0, activity_id: 19)