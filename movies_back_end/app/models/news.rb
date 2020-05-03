class News < ApplicationRecord
  belongs_to :newsable, polymorphic: true
end
