class BuildMixtapeController < ApplicationController
  def create
    vals = {:mixtape_id => params[:mid], :song_id => params[:sid], :order => params[:order]}
    @mixtape_song = MixtapeSong.new(vals)

    if @mixtape_song.save
      redirect_to mixtape_path(@mixtape_song.mixtape_id), :notice => 'Song added to mixtape'
    else
      redirect_to mixtape_path(@mixtape_song.mixtape_id), :notice => 'Process failed!'
    end
  end

  def destroy
    @mixtape_song = MixtapeSong.find(params[:id])
    @mixtape_song.destroy
    flash[:notice] = "Song removed."
    redirect_to mixtapes_path
  end
end
