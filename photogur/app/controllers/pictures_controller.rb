class PicturesController < ApplicationController
  def index
    @pictures = [
      {
        :title => "Never gonna give you up",
        :artist => "doyouwatchsherlock",
        :url => "http://i.imgur.com/FI2XOzv.png"
        },
        {
        :title => "Well",
        :artist => "cuboneder",
        :url => "http://i.imgur.com/7ffU65Q.jpg"
        },
        {
        :title => "Small sips guys",
        :artist => "Anonymous",
        :url => "http://i.imgur.com/it4kUmZ.jpg"
        }
    ]
  end

  def show
    @pictures = [
      {
        :title => "Never gonna give you up",
        :artist => "doyouwatchsherlock",
        :url => "http://i.imgur.com/FI2XOzv.png"
        },
        {
        :title => "Well",
        :artist => "cuboneder",
        :url => "http://i.imgur.com/7ffU65Q.jpg"
        },
        {
        :title => "Small sips guys",
        :artist => "Anonymous",
        :url => "http://i.imgur.com/it4kUmZ.jpg"
        }
    ]
    @picture = @pictures[params[:id].to_i]
  end
end