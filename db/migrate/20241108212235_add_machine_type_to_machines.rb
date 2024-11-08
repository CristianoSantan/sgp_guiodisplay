class AddMachineTypeToMachines < ActiveRecord::Migration[7.2]
  def change
    add_column :machines, :machine_type, :string
  end
end
