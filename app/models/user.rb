class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

  has_many :planets, dependent: :destroy
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true

end
