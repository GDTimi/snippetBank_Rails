class Snippet < ApplicationRecord
  belongs_to :entry
  belongs_to :language

  validates :language, presence: true
end
