class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
