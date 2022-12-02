class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.text :Title
      t.text :Description
      t.date :StartDate
      t.date :EndDate
      t.integer :ManagerID
      t.integer :EmployeeID

      t.timestamps
    end
  end
end
