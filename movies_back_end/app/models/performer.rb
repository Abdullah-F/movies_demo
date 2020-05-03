class Performer < ApplicationRecord
  has_and_belongs_to_many :movies
  has_many :news, as: :newsable
  has_many :awards, as: :awardable
end
