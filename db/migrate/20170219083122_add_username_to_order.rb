class AddUsernameToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :username, :string
  end
end
