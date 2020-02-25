class RemoveSpecialityFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :speciality
  end
end
