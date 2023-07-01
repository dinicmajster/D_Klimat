class AddAddressToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :address, :string
  end
end
