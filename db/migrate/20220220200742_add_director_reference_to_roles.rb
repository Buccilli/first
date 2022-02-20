class AddDirectorReferenceToRoles < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :roles, :directors
    add_index :roles, :director_id
    change_column_null :roles, :director_id, false
  end
end
