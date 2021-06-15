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
  has_many :my_dogs_bookings, through: :dogs, source: :my_bookings
  has_many :bookings_for_other_dogs, through: :dogs, source: :their_bookings
  has_many :chatrooms, dependent: :destroy
  has_many :other_chatrooms, foreign_key: "other_user_id", class_name: "Chatroom", dependent: :destroy

  # validates :name, :avatar, :address, presence: true
  # validates :contact_number, uniqueness: true

  validates :name, :address, presence: true
  validates :contact_number, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_favoritor
end
