class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :from_date, :start_date
  end
end
