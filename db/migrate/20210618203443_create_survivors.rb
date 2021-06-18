class CreateSurvivors < ActiveRecord::Migration[6.1]
  def change
    create_table :survivors do |t|
      t.string :name
      t.integer :age
      t.string :last_location

      t.timestamps
    end
  end
end
