# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CatBreed.delete_all
Patron.delete_all
Accessory.delete_all
AccessorySponsorship.delete_all
CatBreedSponsorship.delete_all



# Cat Breeds
70.times do
    # breed = Faker::Creature::Cat.unique.breed
    CatBreed.create(name: Faker::Creature::Cat.breed)
end

# Patrons
100.times do
    name = Faker::Name.name
    Patron.create(name: name)
    # note: do we want to have first name and last name? Username instead?
end

# Accessories
50.times do
    product_name = Faker::Commerce.product_name
    Accessory.create(name: product_name)
    #this is as good as i could find. also could be funny.
end

# Accessory Sponsorship
20.times do
    amount = rand(5..100)
    sample_patron = Patron.all.sample.id
    sample_accessory = Accessory.all.sample.id
    AccessorySponsorship.create(amount: amount, patron_id: sample_patron, accessory_id: sample_accessory)
end

# Cat Breed Sponsorship 
20.times do
    amount = rand(5..100)
    sample_patron = Patron.all.sample.id
    sample_breed = CatBreed.all.sample.id
    CatBreedSponsorship.create(amount: amount, patron_id: sample_patron, catbreed_id: sample_breed)
end
