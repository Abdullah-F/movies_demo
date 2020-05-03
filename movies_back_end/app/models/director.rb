class Director < ApplicationRecord
  has_many :movies, dependent: :destroy
  has_many :news, as: :newsable
  has_many :awards, as: :awardable

  validates_presence_of :name, :birth_date
end
