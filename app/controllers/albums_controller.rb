class AlbumsController < ApplicationController
  def show
    @album = Album.find(params[:id])
  end

  def index
  end
end
