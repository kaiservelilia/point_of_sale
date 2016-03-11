class RenameTableName < ActiveRecord::Migration
  def change
  	rename_table :company_profiles, :companies
  end
end
