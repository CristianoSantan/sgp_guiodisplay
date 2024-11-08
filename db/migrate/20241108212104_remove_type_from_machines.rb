class RemoveTypeFromMachines < ActiveRecord::Migration[7.2]
  def change
    remove_column :machines, :type, :string
  end
end
