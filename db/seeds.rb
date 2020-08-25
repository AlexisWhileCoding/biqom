# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

file = URI.open('https://images.unsplash.com/photo-1573384666979-2b1e160d2d08?ixlib=rb-1.2.1&auto=format&fit=crop&w=1110&q=80')
activity = Activity.create(name: 'Yoga', description: "A 30-day beginners Yoga activity. Great way to get started and enjoy this popular activity", category: "Sports", days: 30)
activity.photo.attach(io: file, filename: 'yoga.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1519682577862-22b62b24e493?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
activity = Activity.create(name: 'Read more', description: "15-day activity to help you start or finish reading your book and keep reading others!", category: "Personal development", days: 15)
activity.photo.attach(io: file, filename: 'reading.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1509833903111-9cb142f644e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1555&q=80')
activity = Activity.create(name: 'Start to run', description: "This activity will help you discover a love for running with an increase in distance with each challenge", category: "Sports", days: 5)
activity.photo.attach(io: file, filename: 'running.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1556911220-e15b29be8c8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
activity = Activity.create(name: 'Cook your own meal', description: "With this activity you'll cook something during 5 days. We'll provide you with some easy recipes to jumpstart your love of cooking!", category: "Lifestyle", days: 5)
activity.photo.attach(io: file, filename: 'cooking.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1422433555807-2559a27433bd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
activity = Activity.create(name: 'Wake up!', description: "It's time to wake up! If you struggle in the morning use this activity and it's fun challenges to help you wake up sooner than usual.", category: "Lifestyle", days: 10)
activity.photo.attach(io: file, filename: 'sleep.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1586034679970-cb7b5fc4928a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
activity = Activity.create(name: 'Save your money', description: "You spend a lot of money on things you don't need? With this activity we'll help you keep that money in your pocket for more important things!", category: "Lifestyle", days: 30)
activity.photo.attach(io: file, filename: 'money.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1515847049296-a281d6401047?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
activity = Activity.create(name: 'Organize it', description: "Get rid of clutter in different ways with this activity. A small step each day for you to feel better in your space.", category: "Home", days: 10)
activity.photo.attach(io: file, filename: 'organize.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1517931524326-bdd55a541177?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
activity = Activity.create(name: 'Rope skipping', description: "Skip the rope but not this activity! With each challenge you'll increase your stamina and number of jumps.", category: "Sports", days: 30)
activity.photo.attach(io: file, filename: 'rope.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1542426144-3e6c375380e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
activity = Activity.create(name: 'Write', description: "An fun activity to simple start writing. It can be a journal entry, a short story or anything else. We'll throw some fun challenges your way to change it up each time.", category: "Personal development", days: 15)
activity.photo.attach(io: file, filename: 'write.png', content_type: 'image/png')
