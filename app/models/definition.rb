class Definition < ApplicationRecord
  validates :term, presence: true,
            length: { minimum: 5 }
end
