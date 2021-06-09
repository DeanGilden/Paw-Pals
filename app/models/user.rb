class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dogs
  has_many :favourites
  has_many :reviews
  has_many :bookings, through: :dogs
  # validates :name, :avatar, :address, presence: true
  # validates :contact_number, uniqueness: true
end
