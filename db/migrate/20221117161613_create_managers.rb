class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :FirstName
      t.string :LastName
      t.string :DepartmentID
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
