class CreatePortfolioAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_assets do |t|
      t.string :video_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
