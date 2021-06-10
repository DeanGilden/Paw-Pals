class AddMyDogAndTheirDogReferenceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :my_dog, null: false, foreign_key: { to_table: 'dogs' }
    add_reference :bookings, :their_dog, null: false, foreign_key: { to_table: 'dogs' }
  end
end
