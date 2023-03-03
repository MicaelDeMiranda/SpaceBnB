class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true
  # validates :capacity, presence: true
  validates :price_per_night, presence: true
  # validates :description, presence: true, length: { minimum: 100 }

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
