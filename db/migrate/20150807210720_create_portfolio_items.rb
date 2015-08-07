class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.text :name
      t.string :link
      t.text :description
      t.string :img

      t.timestamps
    end
  end
end
