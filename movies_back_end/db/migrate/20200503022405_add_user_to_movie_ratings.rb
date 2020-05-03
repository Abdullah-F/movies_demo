class AddUserToMovieRatings < ActiveRecord::Migration[6.0]
  def change
    add_reference :movie_ratings, :user, null: false, foreign_key: true
  end
end
