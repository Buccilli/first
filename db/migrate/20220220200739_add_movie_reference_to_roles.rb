class AddMovieReferenceToRoles < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :roles, :movies
    add_index :roles, :movie_id
    change_column_null :roles, :movie_id, false
  end
end
