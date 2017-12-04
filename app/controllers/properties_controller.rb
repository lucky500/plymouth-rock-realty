class PropertiesController < ApplicationController
  before_action :find_property, only: [:show, :edit, :update, :destroy]


  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = current_user.properties.build
  end

  def create
    @property = current_user.properties.build(property_params)

    if @property.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @property.update(property_params)
      redirect_to property_path(@property)
    else
      render  :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to root_path
  end

  private
  def property_params
    params.require(:property).permit(:address, :price, :description, :bedrooms, :bathrooms, :sqft, :lot, :year_built)
  end

  def find_property
    @property = Property.find(params[:id])
  end
end
