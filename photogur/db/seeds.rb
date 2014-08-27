# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.create!(
        :title => "Never gonna give you up",
        :artist => "doyouwatchsherlock",
        :url => "http://i.imgur.com/FI2XOzv.png"
        )
Picture.create(
        :title => "Well",
        :artist => "cuboneder",
        :url => "http://i.imgur.com/7ffU65Q.jpg"
        )
Picture.create!(
        :title => "Small sips guys",
        :artist => "Anonymous",
        :url => "http://i.imgur.com/it4kUmZ.jpg"
        )