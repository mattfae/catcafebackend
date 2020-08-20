class AccessorySponsorshipsController < ApplicationController

    def index
        accsSponsorships = AccessorySponsorship.all
        render json: accsSponsorships
    end

    def show
        accsSponsorship = AccessorySponsorship.find(params[:id])
        render json: accsSponsorship
    end

    def create
        accsSponsorship = AccessorySponsorship.create(accs_params)
        render json: accsSponsorship
    end

    def update
        accsSponsorship = AccessorySponsorship.find(params[:id])
        accsSponsorship.update(accs_params)
        render json: accsSponsorship
    end

    def destroy
        accsSponsorship = AccessorySponsorship.find(params[:id])
        accsSponsorship.delete
    end

    private

    def accs_params
        params.require(:accessory_sponsorship).permit(:amount, :patron_id, :accessory_id)
    end

end
