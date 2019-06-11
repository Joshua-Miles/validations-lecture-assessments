class AirlinesController < ApplicationController
    before_action :define_current_airline

    def index
        @airlines = Airline.all
    end

    def show 
        @airline = Airline.find(params[:id])
    end
    
    def edit
        @airline = Airline.find(params[:id])
        @travelers = Traveler.all
    end

    def update
        @airline = Airline.find(params[:id])
        @airline.update(airline_params)
        redirect_to @airline
    end
    
    def airline_params
        params.require(:airline).permit(:name, traveler_ids: [])
    end
end