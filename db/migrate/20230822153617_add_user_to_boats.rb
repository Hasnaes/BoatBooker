class AddUserToBoats < ActiveRecord::Migration[7.0]
  def change
    add_reference :boats, :user
  end
end
