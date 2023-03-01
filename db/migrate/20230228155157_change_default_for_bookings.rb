class ChangeDefaultForBookings < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :status, "En attente de confirmation"
  end
end
