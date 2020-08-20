class AccessorySponsorshipsController < ApplicationController

    def index
        accessory_sponsorships = AccessorySponsorship.all
        render json: accessory_sponsorships
    end

    def show
        accessory_sponsorship = AccessorySponsorship.find(params[:id])
        render json: accsSponsorship
    end

    def create
        accessory = Accessory.create(accs_params)
        render json: accsSponsorship
    end

    def update
        accessory_sponsorship = AccessorySponsorship.find(params[:id])
        accessory_sponsorship.update(accs_params)
        render json: accsSponsorship
    end

    def destroy
        accessory_sponsorship = AccessorySponsorship.find(params[:id])
        accessory_sponsorship.delete
    end

    private

    def accs_params
        params.require(:accessory_sponsorship).permit(:amount)
    end

end
