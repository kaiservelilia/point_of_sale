class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :gender
      t.string :email
      t.integer :contact_no
      t.text :address
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
