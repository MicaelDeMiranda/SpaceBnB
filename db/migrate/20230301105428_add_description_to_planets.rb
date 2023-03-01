class AddDescriptionToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :description, :string
  end
end
