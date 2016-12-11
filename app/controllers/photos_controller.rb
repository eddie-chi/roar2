class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create
    @place = Place.find(params[:plcae_id])

    @place.photos.create(photo_params)
    redirect_to_place_path(@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end
end
