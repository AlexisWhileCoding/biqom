# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserChallenge.destroy_all
Activity.destroy_all
Challenge.destroy_all

require "open-uri"
# #
file = URI.open('https://images.unsplash.com/photo-1573384666979-2b1e160d2d08?ixlib=rb-1.2.1&auto=format&fit=crop&w=1110&q=80')
activity_1 = Activity.create(name: 'Yoga', description: "A 30-day beginners Yoga activity. Great way to get started and enjoy this popular activity", category: "Sports", days: 30)
activity_1.photo.attach(io: file, filename: 'yoga.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1519682577862-22b62b24e493?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
activity_2 = Activity.create(name: 'Read more', description: "15-day activity to help you start or finish reading your book and keep reading others!", category: "Personal development", days: 15)
activity_2.photo.attach(io: file, filename: 'reading.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1509833903111-9cb142f644e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1555&q=80')
activity_3 = Activity.create(name: 'Start to run', description: "This activity will help you discover a love for running with an increase in distance with each challenge", category: "Sports", days: 5)
activity_3.photo.attach(io: file, filename: 'running.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1475721027785-f74eccf877e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
activity_4 = Activity.create(name: 'Public speaking', description: "If you're nervous when you need to speak in front of a crowd, this activity will give you helpful tips and challenges to improve your skills!", category: "Lifestyle", days: 5)
activity_4.photo.attach(io: file, filename: 'speaking.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1422433555807-2559a27433bd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
activity_5 = Activity.create(name: 'Wake up!', description: "It's time to wake up! If you struggle in the morning use this activity and it's fun challenges to help you wake up sooner than usual.", category: "Lifestyle", days: 10)
activity_5.photo.attach(io: file, filename: 'sleep.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1586034679970-cb7b5fc4928a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
activity_6 = Activity.create(name: 'Save your money', description: "You spend a lot of money on things you don't need? With this activity we'll help you keep that money in your pocket for more important things!", category: "Lifestyle", days: 30)
activity_6.photo.attach(io: file, filename: 'money.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1515847049296-a281d6401047?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
activity_7 = Activity.create(name: 'Organize it', description: "Get rid of clutter in different ways with this activity. A small step each day for you to feel better in your space.", category: "Home", days: 10)
activity_7.photo.attach(io: file, filename: 'organize.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1517931524326-bdd55a541177?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
activity_8 = Activity.create(name: 'Rope skipping', description: "Skip the rope but not this activity! With each challenge you'll increase your stamina and number of jumps.", category: "Sports", days: 30)
activity_8.photo.attach(io: file, filename: 'rope.png', content_type: 'image/png')
# #
file = URI.open('https://images.unsplash.com/photo-1542426144-3e6c375380e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
activity_9 = Activity.create(name: 'Write', description: "An fun activity to simple start writing. It can be a journal entry, a short story or anything else. We'll throw some fun challenges your way to change it up each time.", category: "Personal development", days: 15)
activity_9.photo.attach(io: file, filename: 'write.png', content_type: 'image/png')





file = URI.open('https://i.ytimg.com/an_webp/FPjppcOquE4/mqdefault_6s.webp?du=3000&sqp=CJTEufoF&rs=AOn4CLBWcmzEj-IF2OysY-unPJKcPwbL8w')
challenge = Challenge.create(name: "Sun salutation", description: "Let's start with an easy first pose: the sun salutation ", content: "https://www.youtube.com/embed/FPjppcOquE4", source: "Youtube", source_type: "Video", duration: 4, position: 0, activity: activity_1)
challenge.photo.attach(io: file, filename: 'sun.png', content_type: 'image/png')

file = URI.open('https://i.ytimg.com/an_webp/B1eF-Wl2AlU/mqdefault_6s.webp?du=3000&sqp=CJDNuPoF&rs=AOn4CLD4a5fdoecCizjmtFHDYZBvSHvl9Q')
challenge = Challenge.create(name: "Moon salutation", content: "https://www.youtube.com/embed/B1eF-Wl2AlU", source: "Youtube", source_type: "Video", duration: 4, position: 1, activity: activity_1)
challenge.photo.attach(io: file, filename: 'wakeup.png', content_type: 'image/png')

challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 2, activity: activity_1)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 3, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 4, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 5, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 6, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 7, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 8, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 9, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 10, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 11, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 12, activity: activity_1)
challenge = Challenge.create(name: "Challenge 2", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 13, activity: activity_1)
challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 14, activity: activity_1)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 15, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 16, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 17, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 18, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 19, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 20, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 21, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 22, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 23, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 24, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 25, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 26, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 27, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 28, activity: activity_1)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 29, activity: activity_1)




file = URI.open('https://i.ytimg.com/an_webp/XtDc_iJ-j-M/mqdefault_6s.webp?du=3000&sqp=CJTZuPoF&rs=AOn4CLCdqHeMzVfcABQlWmqc50twLKhT5A')
challenge = Challenge.create(name: "Introduction - How to wake up early", content: "https://www.youtube.com/embed/XtDc_iJ-j-M", source: "Youtube", source_type: "Video", duration: 8, position: 0, activity: activity_5)
challenge.photo.attach(io: file, filename: 'wakeup.png', content_type: 'image/png')
challenge = Challenge.create(name: "Challenge 2", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 1, activity: activity_5)
challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 2, activity: activity_5)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 3, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 4, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 5, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 6, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 7, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 8, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 9, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 10, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 11, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 12, activity: activity_5)
challenge = Challenge.create(name: "Challenge 2", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 13, activity: activity_5)
challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 14, activity: activity_5)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 15, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 16, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 17, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 18, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 19, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 20, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 21, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 22, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 23, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 24, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 25, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 26, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 27, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 28, activity: activity_5)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 29, activity: activity_5)

file = URI.open('https://i.ytimg.com/an_webp/fm0WpJsWBA8/mqdefault_6s.webp?du=3000&sqp=CJvuuPoF&rs=AOn4CLAaz8XgIROytyVYfzsbJF-V-bJCrQ')
challenge = Challenge.create(name: "Start skipping!", content: "https://www.youtube.com/embed/fm0WpJsWBA8", source: "Youtube", source_type: "Video", duration: 3, position: 0, activity: activity_8)
challenge.photo.attach(io: file, filename: 'roping.png', content_type: 'image/png')
challenge = Challenge.create(name: "Challenge 2", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 1, activity: activity_8)
challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 2, activity: activity_8)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 3, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 4, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 5, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 6, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 7, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 8, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 9, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 10, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 11, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 12, activity: activity_8)
challenge = Challenge.create(name: "Challenge 2", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 13, activity: activity_8)
challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 14, activity: activity_8)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 15, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 16, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 17, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 18, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 19, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 20, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 21, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 22, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 23, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 24, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 25, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 26, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 27, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 28, activity: activity_8)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 29, activity: activity_8)

file = URI.open('https://i.ytimg.com/an_webp/JNOXZumCXNM/mqdefault_6s.webp?du=3000&sqp=CM7iuPoF&rs=AOn4CLBd8VbtqCT0Pgfmlk9cGV1pnPnD6w')
challenge = Challenge.create(name: "5 tips to get started!", description:"Watch the video and try to give a simple presentation in front of your friends or colleagues to practice", content: "https://www.youtube.com/embed/JNOXZumCXNM", source: "Youtube", source_type: "Video", duration: 8, position: 0, activity: activity_4)
challenge.photo.attach(io: file, filename: 'speaking.png', content_type: 'image/png')
challenge = Challenge.create(name: "Challenge 2", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 1, activity: activity_4)
challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 2, activity: activity_4)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 3, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 4, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 5, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 6, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 7, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 8, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 9, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 10, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 11, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 12, activity: activity_4)
challenge = Challenge.create(name: "Challenge 2", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 13, activity: activity_4)
challenge = Challenge.create(name: "Challenge 3", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 14, activity: activity_4)
challenge = Challenge.create(name: "Challenge 4", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 15, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 16, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 17, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 18, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 19, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 20, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 21, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 22, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 23, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 24, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 25, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 26, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 27, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 28, activity: activity_4)
challenge = Challenge.create(name: "Challenge X", content: "Challenge content", source: "Youtube", source_type: "Video", duration: 4, position: 29, activity: activity_4)



# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 1, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 2, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 3, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 4, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 5, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 6, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 7, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 8, activity: activity_5)
# challenge = Challenge.create(name: "Challenge X", content: "Challenge", source: "Youtube", source_type: "Video", duration: 8, position: 9, activity: activity_5)

