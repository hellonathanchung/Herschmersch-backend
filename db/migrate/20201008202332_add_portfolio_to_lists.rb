class AddPortfolioToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :portfolio, :boolean
  end
end
