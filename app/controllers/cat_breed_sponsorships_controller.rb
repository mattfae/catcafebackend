class CatBreedSponsorshipsController < ApplicationController

    def index
        catBreedSponsorships = CatBreedSponsorship.all
        render json: catBreedSponsorships
    end

    def show
        catBreedSponsorship = CatBreedSponsorship.find(params[:id])
        render json: catBreedSponsorship
    end

    def update
        catBreedSponsorship = CatBreedSponsorship.find(params[:id])
        catBreedSponsorship.update(cat_breed_sponsorship_params)
        render json: catBreedSponsorship
    end


    private

    def cat_breed_sponsorship_params
        params.require(:cat_breed_sponsorship).permit(:amount)
    end

end
