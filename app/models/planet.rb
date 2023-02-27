class Planet < ApplicationRecord
  belongs_to :user
  has_one_attached :planet_photo

end
