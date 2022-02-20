class AddActorReferenceToRoles < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :roles, :actors
    add_index :roles, :actor_id
    change_column_null :roles, :actor_id, false
  end
end
