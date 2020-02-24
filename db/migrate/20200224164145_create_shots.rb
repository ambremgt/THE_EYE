class CreateShots < ActiveRecord::Migration[6.0]
  def change
    create_table :shots do |t|
      t.string :angle
      t.references :shotlist, null: false, foreign_key: true
      t.string :shot_size
      t.string :movement
      t.text :description
      t.string :equipment
      t.text :actors
      t.text :props
      t.text :notes
      t.integer :points

      t.timestamps
    end
  end
end
