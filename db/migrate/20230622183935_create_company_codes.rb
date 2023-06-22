class CreateCompanyCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :company_codes do |t|
      t.integer :cocod
      t.string :entity
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
