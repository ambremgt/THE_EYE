class CreateCollaborations < ActiveRecord::Migration[6.0]
  def change
    create_table :collaborations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shot, null: false, foreign_key: true
      t.date :deadline

      t.timestamps
    end
  end
end
