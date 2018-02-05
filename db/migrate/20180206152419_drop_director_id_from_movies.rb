class DropDirectorIdFromMovies < ActiveRecord::Migration[5.1]
  def change
    remove_column :movies, :director_id, :integer
  end
end
