class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dogs, :favourites, :reviews
  has_many :bookings, through: :dogs
  # validates :name, presence: true
  # validates :address, presence: true
  # validates :contact_number, presence: true, uniqueness: true
  # validates :, presence: true
end
