class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string  :address
      t.string  :price
      t.text    :description
      t.string  :bedrooms
      t.string  :bathrooms
      t.string  :type
      t.string  :sqft
      t.string  :lot
      t.string  :year_built

      t.timestamps
    end
  end
end
