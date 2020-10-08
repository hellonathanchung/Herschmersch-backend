class CreatePostStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :post_stocks do |t|
      t.references :post, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
