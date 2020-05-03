class Award < ApplicationRecord
  belongs_to :awardable, polymorphic: true

  validates_presence_of :name, :awardable
end
