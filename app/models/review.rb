class Review < ApplicationRecord
  belongs_to :planet
  belongs_to :user
  validates :content, presence: true
end
