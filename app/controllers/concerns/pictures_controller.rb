class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    picture = Picture.create picture_params
    @current_user.pictures << picture
    redirect_to root_path
  end

  def show
    @picture = Picture.find params[:id]
  end

  def edit
    @picture = Picture.find params[:id]
  end

  def update
    picture = Picture.find params[:id]
    picture.update picture_params
    redirect_to root_path
  end

  def like
    @picture = Picture.find params[:id]
    Like.create(user_id: @current_user.id, picture_id: @picture.id)
    redirect_to picture_path(@picture)
  end

  def unlike
    @current_user.likes.where(:picture_id => params[:id]).destroy_all
    redirect_to picture_path(params[:id])
  end

  def destroy
    picture = Picture.find params[:id]
    picture.destroy
    redirect_to root_path
  end

  private
  def picture_params
    params.require(:picture).permit(:user_id, :album_id, :url) 
  end


end
