class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dogs
  has_one_attached :photo
  has_many :favourites
  has_many :reviews
  has_many :bookings, through: :dogs

  # validates :name, :avatar, :address, presence: true
  # validates :contact_number, uniqueness: true

  validates :name, :address, presence: true
  validates :contact_number, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
