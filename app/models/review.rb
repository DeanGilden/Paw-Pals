class Review < ApplicationRecord
  belongs_to :user 
  belongs_to :dog
  validates :content, presence: true, length: { minimum: 1 }
end
