class RentalPropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :set_station, only: [:show, :edit, :update, :destroy]
  def index
    @properties = RentalProperty.all
  end

  def new
    @property = RentalProperty.new
    @property.nearest_stations.build
  end

  def create
    @property = RentalProperty.new(property_params)
    if @property.save
      redirect_to rental_properties_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @property.update(property_params)
      redirect_to rental_properties_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = RentalProperty.find(params[:id])
    end

    def set_station
      @station = NearestStation.where(rental_property_id: @property.id)
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:rental_property).permit(
        :name,
        :rent,
        :address,
        :age,
        :note,
        nearest_stations_attributes: [:id,
                              :name,
                              :raleway,
                              :minute ]
      )
    end
end
