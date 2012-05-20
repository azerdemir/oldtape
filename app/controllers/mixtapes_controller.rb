class MixtapesController < ApplicationController
  before_filter :find_mixtape, :only => [:show, :edit, :update, :destroy]

	def index
	  @mixtapes = Mixtape.all
  end

  def show
  end

  def create
	  @mixtape = Mixtape.new(params[:mixtape])

	  if @mixtape.save
		  redirect_to @mixtape, notice: 'Your mixtape was successfully created.'
		else
			render action: 'new'
	  end
  end

  def edit
  end

  def update
	  if @mixtape.update_attributes(params[:mixtape])
			redirect_to @mixtape, :notice => 'Your mixtape was succesfully updated'
	  else
		  render action: 'edit'
	  end
  end

  def destroy
	  @mixtape.destroy
	  redirect_to mixtapes_path
  end

  def new
	  @mixtape = Mixtape.new
  end

  protected
    def find_mixtape
	    @mixtape = Mixtape.find(params[:id])
    end
end
