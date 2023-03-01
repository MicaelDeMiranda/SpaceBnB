class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :ending_date, presence: true
  validates :starting_date, presence: true
  validates :capacity, presence: true
  validates :number_of_visitos, presence: true
end
