class Patron < ApplicationRecord

    has_many :accessory_sponsorships
    has_many :cat_breed_sponsorships
    has_many :accessories, through: :accessory_sponsorships
    has_many :cat_breeds, through: :cat_breed_sponsorships
    
end
