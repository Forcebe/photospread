class AlbumsController < ApplicationController


  def index
    @albums = @current_user.albums
  end

  def show
    check_for_login
    @album = Album.find(params[:id])
  end

  def new
    check_for_login
    @album =  Album.new
  end

  def create
    check_for_login
    # raise :hell
    album = Album.new(album_params)
    # This is the magic stuff that will let us upload an image to Cloudinary when
    # creating a new album.
    if params[:album][:images].present?
      params[:album][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        album.images << req["public_id"]
      end
    end
    album.save
    # associate the album with the current user
    @current_user.albums << album
    # redirect_to root_path
    redirect_to albums_path
  end

  def edit
    check_for_login
    @album = Album.find(params[:id])
  end

  def update
    check_for_login
    album = Album.find(params[:id])
    if params[:album][:images].present?
      params[:album][:images].each do |image|
        req = Cloudinary::Uploader.upload(image)
        album.images << req["public_id"]
      end
    end
  end

  def destroy
    check_for_login
    album = Album.find params[:id]
    album.destroy
    redirect_to root_path
  end

  private
  def album_params
    params.require(:album).permit(:user_id, :name, :images)
  end
 end
