class CreateListStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :list_stocks do |t|
      t.references :list, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
