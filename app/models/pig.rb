class Pig < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings

  validates :name, presence: true
  validates :age, presence: true
  validates :profession, presence: true
  validates :bio, presence: true, length: { minimum: 100 }
  validates :weight, presence: true
end
