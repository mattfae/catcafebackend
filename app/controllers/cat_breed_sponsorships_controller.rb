class CatBreedSponsorshipsController < ApplicationController

    def index
        catBreedSponsorships = CatBreedSponsorship.all
        render json: catBreedSponsorships
    end

    def show
        catBreedSponsorship = CatBreedSponsorship.find(params[:id])
        render json: catBreedSponsorship
    end

    def create
        catBreedSponsorship = CatBreedSponsorship.create(cbs_params)
        render json: catBreedSponsorship
    end

    def update
        catBreedSponsorship = CatBreedSponsorship.find(params[:id])
        catBreedSponsorship.update(cbs_params)
        render json: catBreedSponsorship
    end

    def destroy
        catBreedSponsorship = CatBreedSponsorship.find(params[:id])
        catBreedSponsorship.delete
    end
    

    private

    def cbs_params
        params.require(:cat_breed_sponsorship).permit(:amount, :patron_id, :cat_breed_id)
    end

end
