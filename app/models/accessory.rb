class Accessory < ApplicationRecord

    has_many :accessory_sponsorships
    has_many :patrons, through: :accessory_sponsorships

end
