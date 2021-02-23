class CreateLends < ActiveRecord::Migration[5.2]
  def change
    create_table :lends do |t|
      t.integer :brrower_id
      t.integer :book_id
      t.boolean :is_active

      t.timestamps
    end
  end
end
