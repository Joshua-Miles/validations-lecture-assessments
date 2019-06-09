class TravelersController < ApplicationController
    before_action :define_current_traveler
    
    def create
        Traveler.create(traveler_params)
        redirect_to travelers_path
    end
    
    def index
        @travelers = Traveler.all
    end
    
    def update
        @traveler.update(traveler_params)
        redirect_to @traveler
    end
    
    def destroy
        @traveler.destroy
        redirect_to travelers_path
    end
    
    def define_current_traveler
        if params[:id]
            @traveler = Traveler.find(params[:id])
        else
            @traveler = Traveler.new
        end
    end
    
    def traveler_params
        params.require(:traveler).permit(:name)
    end
end