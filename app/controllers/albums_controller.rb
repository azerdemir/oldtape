class AlbumsController < ApplicationRestfulController
  def new
    if params[:artist_id].blank?
      redirect_to artists_path
    else
      super
    end
  end
end
