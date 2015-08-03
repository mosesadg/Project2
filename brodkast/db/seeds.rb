# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all
Comment.destroy_all

video1 = Video.create(subject:"Video 1", link_url:"https://www.youtube.com/embed/LzhIOcFBo2s", author:"Anand", date_created:"123", likes:12)

video2 = Video.create(subject:"Video 2", link_url:"https://www.youtube.com/embed/uW9Hu3w-4mA", author:"AnandM", date_created:"333", likes:21)

video3 = Video.create(subject:"Video 3", link_url:"https://www.youtube.com/embed/tPRbevnHmpY", author:"AnandM", date_created:"333", likes:270)

video4 = Video.create(subject:"Video 4", link_url:"https://www.youtube.com/embed/mSF-R0A3N8c", author:"AnandM", date_created:"333", likes:45)

video5 = Video.create(subject:"Video 5", link_url:"https://www.youtube.com/embed/PSx7Pcbx0zw", author:"AnandM", date_created:"333", likes:67)

comment1 = Comment.create(text_body:"Video 1 looks good, yay!", author:"Mr.Utube", date_created:"2015", video:video1 )
