class RenameOldTableToNewTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :landlords
  end
end
