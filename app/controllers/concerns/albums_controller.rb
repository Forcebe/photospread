class AlbumsController < ApplicationController
  before_action :check_for_login

  def index
    @albums = Album.all
  end

  def new
    @album =  Album.new
  end

  def create
    album = Album.create album_params
    @current_user.albums << album
    redirect_to root_path
  end

  def destroy
    album = Album.find params[:id]
    album.destroy
    redirect_to root_path
  end

  private
  def album_params
    params.require(:album).permit(:user_id, :name)
  end
end
