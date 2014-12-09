class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :MiddleName
      t.string :LastName
      t.float :Pay
      t.date :Birthday
      t.string :Address
      t.string :Email
      t.integer :role_id

      t.timestamps
    end
  end
end
