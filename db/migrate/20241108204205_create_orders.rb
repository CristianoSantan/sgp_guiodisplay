class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :status, default: 0
      t.references :customer, null: false, foreign_key: true
      t.references :Enterprise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
