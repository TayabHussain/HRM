class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.text :Name
      t.integer :LocationID
      t.integer :ManagerID

      t.timestamps
    end
  end
end
