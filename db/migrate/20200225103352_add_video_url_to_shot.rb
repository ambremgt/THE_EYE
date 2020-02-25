class AddVideoUrlToShot < ActiveRecord::Migration[6.0]
  def change
    add_column :shots, :video_url, :string
  end
end
