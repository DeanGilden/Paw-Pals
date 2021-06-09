class Dog < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_many :favourites
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :sex, presence: true
  # validates :temperament, presence: true
  validates :description, presence: true, length: { minimum: 80 }
  # validates :images, presence: true
end
