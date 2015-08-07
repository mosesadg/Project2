# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all
Comment.destroy_all

video1 = Video.create(subject:"Learn Ruby", link_url:"https://www.youtube.com/embed/Dji9ALCgfpM", author:"Anand", date_created:"August 01, 2015", likes:12)

video2 = Video.create(subject:"Learn Python", link_url:"https://www.youtube.com/embed/N4mEzFDjqtA", author:"AnandM", date_created:"August 02, 2015", likes:21)

video3 = Video.create(subject:"Learn Javascript", link_url:"https://www.youtube.com/embed/vZBCTc9zHtI", author:"AnandM", date_created:"August 03, 2015", likes:270)

video4 = Video.create(subject:"Learn C#", link_url:"https://www.youtube.com/embed/pSiIHe2uZ2w", author:"AnandM", date_created:"August 04, 2015", likes:45)

video5 = Video.create(subject:"Learn JQuery", link_url:"https://www.youtube.com/embed/hMxGhHNOkCU", author:"AnandM", date_created:"August 05, 2015", likes:67)

video6 = Video.create(subject:"Learn Javascript", link_url:"https://www.youtube.com/embed/vZBCTc9zHtI", author:"AnandM", date_created:"August 03, 2015", likes:270)

video7 = Video.create(subject:"Learn C#", link_url:"https://www.youtube.com/embed/pSiIHe2uZ2w", author:"AnandM", date_created:"August 04, 2015", likes:45)

video8 = Video.create(subject:"Learn JQuery", link_url:"https://www.youtube.com/embed/hMxGhHNOkCU", author:"AnandM", date_created:"August 05, 2015", likes:67)
comment1 = Comment.create(text_body:"Video 1 looks good, yay!", author:"Mr.Utube", date_created:"2015", video:video1 )
