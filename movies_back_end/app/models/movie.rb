class Movie < ApplicationRecord
  has_and_belongs_to_many :performers
  belongs_to :director

  has_many :movie_ratings, dependent: :destroy
  has_many :genres, dependent: :nullify
  has_many :news, as: :newsable
  has_many :awards, as: :awardable

  validates_presence_of :censorship, :release_date, :name

  enum censorship: {
    'G' => 0,
    'PG' => 1,
    'PG-13' => 2,
    'R' => 3,
    'NC-17' => 4
  }


  def user_ratings(user_id)
    movie_ratings.find_by_user_id(user_id)
  end
end
