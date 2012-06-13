class AlbumsController < ApplicationController
  def show
    @album = Album.find(params[:id])
  end

  def index
  end

  def new
	if params[:artist_id].blank?
		redirect_to artists_path
	else
		@album = Album.new
	end
  end

  def create
  	@album = Album.new(params[:album])

    if @album.save
      redirect_to @album, :notice => 'Album was successfully created.'
    else
      render :action => "new"
    end
  end
end
