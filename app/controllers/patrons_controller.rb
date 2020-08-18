class PatronsController < ApplicationController

    def index
        patrons = Patron.all
        render json: patrons 
    end

    def show
        patron = Patron.find(params[:id])
        cbs = patron.cat_breed_sponsorships
        # patron[:cbs] = cbs
        render json: patron
    end


    #CatBreedSponsorships


end
