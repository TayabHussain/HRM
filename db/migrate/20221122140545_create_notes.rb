class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :Title
      t.string :Description
      t.integer :EmployeeID
      t.integer :ManagerID

      t.timestamps
    end
  end
end
