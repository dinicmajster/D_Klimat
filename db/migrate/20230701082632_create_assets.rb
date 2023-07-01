class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :type
      t.boolean :active
      t.string :ownership
      t.integer :submission
      t.float :latitude
      t.float :longitude
      t.references :company_code, null: false, foreign_key: true

      t.timestamps
    end
  end
end
