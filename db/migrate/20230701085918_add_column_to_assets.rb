class AddColumnToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :comment, :text
  end
end
