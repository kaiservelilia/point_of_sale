class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
      t.string :company_name
      t.string :website
      t.integer :telephone
      t.string :address

      t.timestamps null: false
    end
  end
end
