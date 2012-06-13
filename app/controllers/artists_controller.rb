class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
  	@artist = Artist.new(params[:artist])

    if @artist.save
      redirect_to(@artist, :notice => 'Artist was successfully created.')
    else
      render :action => "new"
    end
  end
end
