class AddRatingToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :rating, :integer, default: 0, null: false
  end
end
