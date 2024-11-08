class CreateEnterprises < ActiveRecord::Migration[7.2]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end