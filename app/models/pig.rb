class Pig < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :age, presence: true
  validates :profession, presence: true
  validates :bio, presence: true, length: { minimum: 100 }
  validates :weight, presence: true
end
