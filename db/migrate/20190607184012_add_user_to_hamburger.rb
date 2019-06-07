class AddUserToHamburger < ActiveRecord::Migration[5.2]
  def change
    add_reference :hamburgers, :user, foreign_key: true
  end
end
