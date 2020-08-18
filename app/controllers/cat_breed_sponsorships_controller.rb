class CatBreedSponsorshipsController < ApplicationController

    def index
        catBreedSponsorships = CatBreedSponsorship.all
        render json: catBreedSponsorships
    end

    def show
        catBreedSponsorship = CatBreedSponsorship.find(params[:id])
        render json: catBreedSponsorship
    end

    

end
