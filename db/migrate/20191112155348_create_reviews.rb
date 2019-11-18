class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.date :from_date
      t.date :end_date
      t.integer :landlord_id
      t.integer :tenant_id
      t.string :address
      t.text :comment

      t.timestamps
    end
  end
end
