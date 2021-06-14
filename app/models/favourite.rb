class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  validates :dog, uniqueness: { scope: :user }
end
