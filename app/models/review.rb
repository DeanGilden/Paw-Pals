class Review < ApplicationRecord
  belongs_to :user 
  belongs_to :dog
  validates :content, presence: true, length: { minimum: 50 }
end
