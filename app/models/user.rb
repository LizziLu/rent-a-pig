class User < ApplicationRecord
  has_many :pigs, dependent: :destroy
  has_many :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, email: true, uniqueness: true
  validates :password, presence: true
end
