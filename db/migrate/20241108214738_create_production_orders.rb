class CreateProductionOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :production_orders do |t|
      t.date :start_date
      t.date :end_date
      t.integer :status, default: 0
      t.references :order, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
