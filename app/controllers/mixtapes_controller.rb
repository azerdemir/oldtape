class MixtapesController < ApplicationRestfulController
  before_filter :find_item, :only => [:show, :edit, :update, :destroy]

  def show
	  if params[:query].present?
      @songs = Song.search(params[:query], load: true)
    else
      @songs = nil
    end
  end

  def edit
  end

  def update
    if @item.update_attributes(params[:mixtape])
      redirect_to @item, :notice => 'Your mixtape was succesfully updated'
    else
      render action: 'edit'
    end
  end

  def destroy
    @item.destroy
    redirect_to mixtapes_path
  end
end
