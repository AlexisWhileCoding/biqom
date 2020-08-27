# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

challenge = Challenge.create(name: "One chapter", content: "Read one chapter or the first chapter of a book you chose", source: "Biqom", source_type: "Text", duration: 30, position: 0, activity_id: 20)