class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
