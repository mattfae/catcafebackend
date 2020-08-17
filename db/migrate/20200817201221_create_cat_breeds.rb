class CreateCatBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :cat_breeds do |t|
      t.string :name

      t.timestamps
    end
  end
end
