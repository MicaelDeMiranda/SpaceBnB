class AddPriceToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :price_per_night, :integer
  end
end
