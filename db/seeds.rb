# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(:email => "test_user@gif.com", :password => "password")

user_gifs = user.gifs << Gif.create(
  [
    {
    :url =>"http://media.giphy.com/media/hiQndt1hi1Lva/giphy.gif",
    :all_tags => "#Hey Arnold!, #breakfast"
    },
    {
    :url =>"http://media.giphy.com/media/3ZWc4EEJ34LEA/giphy.gif",
    :all_tags => "#breakfast"
    },
    {
    :url => "http://media.giphy.com/media/KfL5idvGEqXXq/giphy.gif",
    :all_tags => "#slime, #ghostbusters"
    },
    {
    :url =>"http://media.giphy.com/media/3gGJWecQcONmU/giphy.gif",
    :all_tags => "#funny, #The Shining"
    },
    {
    :url =>"http://media.giphy.com/media/1hH0aKzgUkq40/giphy.gif",
    :all_tags => "#laugh"
    },
    {
    :url =>"http://media.giphy.com/media/UHPXak9LTcdKU/giphy.gif",
    :all_tags => "#The Shining, #Batman, #retro"
    },
    {
    :url =>"http://media.giphy.com/media/4KdtAcSh3pMD6/giphy.gif",
    :all_tags => "#dancing, #retro"
    },
    {
    :url =>"http://media.giphy.com/media/IQjbS7v9eYivm/giphy.gif",
    :all_tags => "#Deal with it, #Spongebob, #funny"
    },
    {
    :url =>"http://media.giphy.com/media/kWHR3f23hTzz2/giphy.gif",
    :all_tags => "#awkward"
    },
    {
    :url => "http://media.giphy.com/media/1PUzYSVDY7Nug/giphy.gif",
    :all_tags => "#awkward"
    },
    {
    :url =>"http://media.giphy.com/media/dbnxZupscdwCQ/giphy.gif",
    :all_tags => "#awkward, #LOTR, #eyes"
    },
    {
    :url =>"http://media.giphy.com/media/zE3Kq66OEF85O/giphy.gif",
    :all_tags => "#awkward, #awful"
    },
    {
    :url =>"http://media.giphy.com/media/Ylc1hHLPOjyJG/giphy.gif",
    :all_tags => "#awkward, #Simpsons"
    },
    {
    :url =>"http://media.giphy.com/media/wgmWyQGzaZ6Fy/giphy.gif",
    :all_tags => "#laugh, #Simpsons"
    }
  ]
)
