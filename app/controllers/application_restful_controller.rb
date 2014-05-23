class ApplicationRestfulController < ApplicationController
  def initialize
    @hash_name  = controller_name.singularize
    @model_name = @hash_name.capitalize
  end

  def index
    find_all
  end

  def show
    find_item(params[:id])
  end

  def new
    create_item
  end

  def create
    model = fill_item(params[@hash_name])

    if model.save
      redirect_to(model, :notice => 'Item successfully created.')
    else
      render :action => "new"
    end
  end

  protected
  def find_all
    @items = @model_name.constantize.all
  end

  def find_item(id)
    @item = @model_name.constantize.find(id)
  end

  def create_item
    @item = @model_name.constantize.new
  end

  def fill_item(params)
    @model_name.constantize.new(params)
  end
end