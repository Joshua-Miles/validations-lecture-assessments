class AirlinesController < ApplicationController
    before_action :define_current_airline
    
    def create
        Airline.create(airline_params)
        redirect_to airlines_path
    end
    
    def index
        @airlines = Airline.all
    end
    
    def edit
        @travelers = Traveler.all
    end

    def update
        @airline.update(airline_params)
        redirect_to @airline
    end
    
    def destroy
        @airline.destroy
        redirect_to airlines_path
    end
    
    def define_current_airline
        if params[:id]
            @airline = Airline.find(params[:id])
        else
            @airline = Airline.new
        end
    end
    
    def airline_params
        params.require(:airline).permit(:name, :traveler_ids)
    end
end