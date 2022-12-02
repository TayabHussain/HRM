# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_25_141627) do
  create_table "appointments", force: :cascade do |t|
    t.text "Title"
    t.text "Description"
    t.date "StartDate"
    t.date "EndDate"
    t.integer "ManagerID"
    t.integer "EmployeeID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.text "Name"
    t.integer "LocationID"
    t.integer "ManagerID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "email"
    t.string "Phone"
    t.date "HireDate"
    t.integer "JobID"
    t.integer "Salary"
    t.integer "DepartmentID"
    t.integer "ManagerID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "Title"
    t.string "Description"
    t.integer "EmployeeID"
    t.integer "ManagerID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "Title"
    t.integer "Minsalary"
    t.integer "Maxsalary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "StreetAddress"
    t.string "PostalCode"
    t.string "City"
    t.string "Province"
    t.string "Country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "DepartmentID"
    t.integer "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "Title"
    t.string "Description"
    t.integer "EmployeeID"
    t.integer "ManagerID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
