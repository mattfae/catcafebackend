class CatBreedsController < ApplicationController

    def index
        catBreeds = CatBreed.all
        render json: catBreeds
    end

end
