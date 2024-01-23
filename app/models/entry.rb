class Entry < ApplicationRecord
  has_many :snippets, dependent: :destroy
  accepts_nested_attributes_for :snippets

  def snippets_attributes=(snippet_attributes)
    snippet_attributes.values.each do |snippet_attribute|
      snippet = Snippet.find_or_create_by(snippet_attribute)
      # self.snippets << snippet
    end
  end
end
