class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :ending_date
      t.date :starting_date
      t.boolean :status, :default => false
      t.integer :number_of_visitors
      t.references :user, null: false, foreign_key: true
      t.references :planet, null: false, foreign_key: true


      t.timestamps
    end
  end
end
