class AddGenderToSurvivors < ActiveRecord::Migration[6.1]
  def change
    add_column :survivors, :gender, :string, null: false
  end
end
