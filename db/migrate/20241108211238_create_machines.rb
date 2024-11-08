class CreateMachines < ActiveRecord::Migration[7.2]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :type
      t.integer :status, default: 0
      t.references :enterprise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
