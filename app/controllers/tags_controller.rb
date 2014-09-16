class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @photos = Photo.all
    @users= User.all
    @tag =Tag.new
  end

  def create
    @photo = Photo.find(params[:id])
    @user = User.find(params[:id])
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to photos_path
    else
      render 'new'
    end
  end

  # def show
  #   @tag = Tag.find(params[:id])
  # end

private
  def tag_params
    params.require(:tag).permit(:photo_id, :user_id)
  end

end
