class RemoveLastNameFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :last_name
  end
end
