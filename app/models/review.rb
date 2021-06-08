class Review < ApplicationRecord
  belongs_to :user, :dog
  validates :content, presence: true, length: { minimum: 50 }
end
