class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.references :survivors, foreign_key: true
      t.references :items, foreign_key: true

      t.timestamps
    end
  end
end
