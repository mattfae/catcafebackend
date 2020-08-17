class CatBreed < ApplicationRecord

    has_many :cat_breed_sponsorships
    has_many :patrons, through: :cat_breed_sponsorships
    
end
