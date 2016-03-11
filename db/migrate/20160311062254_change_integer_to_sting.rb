class ChangeIntegerToSting < ActiveRecord::Migration
  def change
  	change_column :employees, :contact_no, :string
  end
end
