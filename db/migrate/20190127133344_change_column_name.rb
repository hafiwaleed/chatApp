class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :type, :person_type
  end
end
