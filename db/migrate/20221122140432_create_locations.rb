class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :StreetAddress
      t.string :PostalCode
      t.string :City
      t.string :Province
      t.string :Country

      t.timestamps
    end
  end
end
