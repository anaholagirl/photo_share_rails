class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def new
    @photo = Photo.find(params[:photo_id])
    @user = User.find(session[:user_id])
    @favorite = Favorite.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @favorite = @photo.favorites.new(user_id: session[:user_id])
    if @favorite.save
      flash[:notice] = "This photo is now a favorite!"
      redirect_to photos_path
    else
      render 'new'
    end
  end

private
  def favorite_params
      params.require(:favorite).permit(:photo_id, :user_id)
  end
end
