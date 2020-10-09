class AddPortfolioToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :portfolio, :boolean, default: false
  end
end
