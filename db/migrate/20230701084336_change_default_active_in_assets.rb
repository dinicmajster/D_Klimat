class ChangeDefaultActiveInAssets < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:assets, :active, from: nil, to: true)
  end
end
