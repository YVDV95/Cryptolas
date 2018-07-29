class AddFormDataToSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :street, :string
    add_column :spots, :number, :integer
    add_column :spots, :state, :string
    add_column :spots, :country, :string
  end
end
