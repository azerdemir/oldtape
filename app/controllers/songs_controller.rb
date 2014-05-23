class SongsController < ApplicationRestfulController
  def new
    if params[:album_id].blank?
      redirect_to artists_path
    else
      super
    end
  end
end
