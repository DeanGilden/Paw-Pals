class RemoveDogReferenceFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :dog, null: false, foreign_key: true
  end
end
