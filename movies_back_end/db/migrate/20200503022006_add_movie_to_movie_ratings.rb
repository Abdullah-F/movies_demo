class AddMovieToMovieRatings < ActiveRecord::Migration[6.0]
  def change
    add_reference :movie_ratings, :movie, null: false, foreign_key: true
  end
end
