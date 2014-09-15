class PhotosController < ApplicationController
before_filter :authorize, only: [:show, :update, :destroy]
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
    @user = User.find(session[:user_id])
  end

  def create
    @user = User.find(session[:user_id])
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      render 'new'
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path(current_user)
  end

private
  def photo_params
    params.require(:photo).permit(:image, :user_id, :name).merge(:user_id => current_user.id)
  end

end
