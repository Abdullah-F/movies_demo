class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :censorship, :release_date
  has_many :movie_ratings
end
