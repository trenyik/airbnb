class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.integer :property_id
      t.string :from_date
      t.string :to_date

      t.timestamps
    end
  end
end
