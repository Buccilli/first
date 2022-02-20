class AddMovieReferenceToActors < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :actors, :movies
    add_index :actors, :movie_id
    change_column_null :actors, :movie_id, false
  end
end
