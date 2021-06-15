class Dog < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :reviews
  has_many :my_bookings, foreign_key: "my_dog_id", class_name: "Booking"
  has_many :their_bookings, foreign_key: "their_dog_id", class_name: "Booking"
  has_many :favourites
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :sex, presence: true
  validates :temperament, presence: true
  validates :description, presence: true, length: { minimum: 80 }
  acts_as_favoritable
  # validates :images, presence: true
  TEMPERAMENTS = {"Playful" => '🥎 Playful 🥎', "Timid" => '😳 Timid 😳', "Grumpy" => '😠 Grumpy 😠', "Energetic" => '⚡ Energetic ⚡', "Lazy" => '🦥 Lazy 🦥', "Wild" => '🐾 Wild 🐾', "Defensive" => '🛡 Defensive 🛡', "Diva" => '💅 Diva 💅', "Relaxed" => '😎 Relaxed 😎', "Sensitive" => '😰 Sensitive 😰'}
end
