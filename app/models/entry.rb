class Entry < ApplicationRecord
  has_many :snippets, dependent: :destroy


end
