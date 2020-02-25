class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :biography, :text
    add_column :users, :city, :string
    add_column :users, :wallet, :integer, default: 50
  end
end
