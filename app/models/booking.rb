class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :ending_date, presence: true
  validates :starting_date, presence: true
  validates :number_of_visitors, presence: true
end
