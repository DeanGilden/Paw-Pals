class UsersController < ApplicationController
  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: [ :address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def show
    @user = User.find(params[:id])
  end
end
