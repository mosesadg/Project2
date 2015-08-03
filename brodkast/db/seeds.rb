# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all
Comment.destroy_all

video1 = Video.create(subject:"Video 1", video_url:"https://www.youtube.com/embed/mSF-R0A3N8c", author:"Anand", date_created:"123", likes:12)


comment1 = Comment.create(text_body:"Video 1 looks good, yay!", author:"Mr.Utube", date_created:"2015", video:video1 )
