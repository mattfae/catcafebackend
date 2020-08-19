class PatronSerializer < ActiveModel::Serializer
  attributes :id, :name, :cat_breed_sponsorships, :accessory_sponsorships

  def cat_breed_sponsorships
    self.object.cat_breed_sponsorships.map do |cat_breed_sponsorship|
      {
        cat_breed_sponsorship_id: cat_breed_sponsorship.id,
        cat_breed: cat_breed_sponsorship.cat_breed.name,
        amount: cat_breed_sponsorship.amount
      }
    end
  end

  def accessory_sponsorships
    self.object.accessory_sponsorships.map do |accessory_sponsorship|
      {
        accessory_sponsorship_id: accessory_sponsorship.id,
        accessory: accessory_sponsorship.accessory.name,
        amount: accessory_sponsorship.amount
      }
    end
  end
  
end
