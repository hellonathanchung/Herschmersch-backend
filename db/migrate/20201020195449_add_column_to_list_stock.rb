class AddColumnToListStock < ActiveRecord::Migration[6.0]
  def change
    add_column :list_stocks, :shares, :integer
  end
end
