class AddPhoneAndAddressToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :phone_number, :string
    add_column :orders, :address, :text
  end
end
