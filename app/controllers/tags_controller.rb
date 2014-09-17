class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @photo = Photo.find(params[:photo_id])

    @tag = Tag.new
  end

  def create
    @photo = Photo.find(params[:photo_id])

    @tag = @photo.tags.new(tag_params)
    if @tag.save

      flash[:notice] = "This photo has been tagged!"
      redirect_to photos_path
    else
      render 'new'
    end
  end

 private
  def tag_params
    params.require(:tag).permit(:photo_id, :user_id)
  end
end
