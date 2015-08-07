class CreateStackComponents < ActiveRecord::Migration
  def change
    create_table :stack_components do |t|
      t.text :name
      t.references :portfolio_item, index: true

      t.timestamps
    end
  end
end
