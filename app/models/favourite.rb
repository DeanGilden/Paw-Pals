class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :dog
  belongs_to :favoritable, polymorphic: true
  belongs_to :favoritor, polymorphic: true
  validates :dog, uniqueness: { scope: :user }

  def block!
    update!(blocked: true)
  end
end
