class PicturesController < ApplicationController
  def index
    @pictures = Picture.most_recent
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

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(picture_params)
      redirect_to "/pictures#{@picture.id}"
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end

  private

  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end
end