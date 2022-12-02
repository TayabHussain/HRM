class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :Title
      t.integer :Minsalary
      t.integer :Maxsalary

      t.timestamps
    end
  end
end
