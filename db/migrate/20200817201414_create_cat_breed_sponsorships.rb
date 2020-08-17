class CreateCatBreedSponsorships < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_breed_sponsorships do |t|
      t.integer :patron_id
      t.integer :catbreed_id
      t.integer :amount

      t.timestamps
    end
  end
end
