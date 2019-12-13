class PropertiesController < ApplicationController
   
   def index
    @properties = Property.all
   end

    def create
        property = Property.create(property_params)
        property.user_id = params[:user_id]
        property.save
        property.image.attach(params[:property][:image])
        redirect_to user_url(params[:user_id])
    end

    private

    def property_params
        params.require(:property).permit(:name, :price_per_night)
    end

end
