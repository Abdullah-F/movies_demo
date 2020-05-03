class AddMovieToGenres < ActiveRecord::Migration[6.0]
  def change
    add_reference :genres, :movie, null: false, foreign_key: true
  end
end
