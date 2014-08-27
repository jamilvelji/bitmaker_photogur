class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    #Make a new picture with specific parameters from the return values
    @picture = Picture.new(picture_params)
    if @picture.save
      #If the save worked
      redirect_to pictures_url
    else
      #If the save failed, render the view assocaited with the action
      render :new
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end
end