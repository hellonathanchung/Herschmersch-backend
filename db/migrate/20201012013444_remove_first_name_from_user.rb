class RemoveFirstNameFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :first_name
  end
end
