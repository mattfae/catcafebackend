class AccessorySponsorshipsController < ApplicationController

    def index
        accessory_sponsorships = AccessorySponsorship.all
        render json: accessory_sponsorships
    end

    def show
        accessory_sponsorship = AccessorySponsorship.find(params[:id])
        render json: accessory_sponsorship
    end

    def update
        accessory_sponsorship = AccessorySponsorship.find(params[:id])
        accessory_sponsorship.update(accessory_sponsorship_params)
        render json: accessory_sponsorship
    end

    def destroy
        accessory_sponsorship = AccessorySponsorship.find(params[:id])
        accessory_sponsorship.delete
    end

    private

    def accessory_sponsorship_params
        params.require(:accessory_sponsorship).permit(:amount)
    end

end
