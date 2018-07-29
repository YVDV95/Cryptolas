class RemoveAddressFromSpots < ActiveRecord::Migration[5.1]
  def change
    remove_column :spots, :name, :string
  end
end
