class AddColumnsToListStock < ActiveRecord::Migration[6.0]
  def change
    add_column :list_stocks, :initial_cost, :integer
  end
end
