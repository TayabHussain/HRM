class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :email
      t.string :Phone
      t.date :HireDate
      t.integer :JobID
      t.integer :Salary
      t.integer :DepartmentID
      t.integer :ManagerID

      t.timestamps
    end
  end
end
