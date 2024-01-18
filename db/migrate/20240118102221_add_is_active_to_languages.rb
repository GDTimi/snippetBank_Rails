class AddIsActiveToLanguages < ActiveRecord::Migration[7.1]
  def change
    add_column :languages, :is_active, :boolean, null: false, default: false
  end
end
