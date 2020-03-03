class AddLocationToShots < ActiveRecord::Migration[6.0]
  def change
    add_column :shots, :location, :string
  end
end
