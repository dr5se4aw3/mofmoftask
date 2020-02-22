class RentalPropertiesController < ApplicationController
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

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:rental_property).permit(
        :name,
        :rent,
        :address,
        :age,
        :note,
        stations_attributes: [:id, :name, :raleway, :minute ]
      )
    end
end
