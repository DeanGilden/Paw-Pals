class Booking < ApplicationRecord
  belongs_to :my_dog, class_name: "Dog"
  belongs_to :their_dog, class_name: "Dog"
  validates :date, presence: true
end
