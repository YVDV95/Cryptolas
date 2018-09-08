class RemoveAdresFromSpots < ActiveRecord::Migration[5.1]
  def change
    remove_column :spots, :address, :string
  end
end
