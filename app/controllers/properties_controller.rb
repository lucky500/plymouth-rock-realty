class PropertiesController < ApplicationController
  before_action :find_property, only: [:show, :edit, :update, :destroy]
  
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:notice] = 'Property was successufully created.'
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def show 
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to property_path(@property)
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to root_path
  end

  private
  def property_params
    params.require(:property).permit(:address, :price, :description, :bedrooms, :bathrooms, :type, :sqft, :lot, :year_built)
  end

  def find_property
    @property = Property.find(params[:id])
  end
end