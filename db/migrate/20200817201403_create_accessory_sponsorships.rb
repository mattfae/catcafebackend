class CreateAccessorySponsorships < ActiveRecord::Migration[6.0]
  def change
    create_table :accessory_sponsorships do |t|
      t.integer :patron_id
      t.integer :accessory_id
      t.integer :amount

      t.timestamps
    end
  end
end
