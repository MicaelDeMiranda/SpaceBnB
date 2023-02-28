class AddCapacityToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :capacity, :integer
  end
end
