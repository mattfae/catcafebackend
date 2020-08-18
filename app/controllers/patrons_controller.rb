class PatronsController < ApplicationController

    def index
        @patrons = Patron.all
        render json: @patrons 
    end

end
