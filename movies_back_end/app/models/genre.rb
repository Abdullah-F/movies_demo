class Genre < ApplicationRecord
  belongs_to :movie

  validates_presence_of :genre_type
  enum genre_type: {
    horror: 0,
    action: 1,
  }
end
