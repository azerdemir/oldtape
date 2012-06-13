class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def index
  end

  def new
	if params[:album_id].blank?
		redirect_to artists_path
	else
		@song = Song.new
	end
  end

  def create
  	@song = Song.new(params[:song])

    if @song.save
      redirect_to album_path(@song.album_id), :notice => 'Song was successfully created.'
    else
      render :action => "new"
    end
  end
end
