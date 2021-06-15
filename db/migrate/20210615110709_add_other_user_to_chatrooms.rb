class AddOtherUserToChatrooms < ActiveRecord::Migration[6.0]
  def change
     add_reference :chatrooms, :other_user, null: false, foreign_key: { to_table: 'users' }
  end
end
