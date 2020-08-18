class PatronsController < ApplicationController

    def index
        patrons = Patron.all
        render json: patrons 
    end

    def show
        patron = Patron.find(params[:id])
        render json: patron
    end

end
