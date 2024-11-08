class CreateInventories < ActiveRecord::Migration[7.2]
  def change
    create_table :inventories do |t|
      t.string :sheet_type
      t.integer :quantity
      t.string :width
      t.string :length
      t.string :depth
      t.string :color
      t.string :location
      t.references :enterprise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
