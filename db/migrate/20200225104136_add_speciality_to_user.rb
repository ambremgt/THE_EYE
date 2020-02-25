class AddSpecialityToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :speciality, :string
  end
end
