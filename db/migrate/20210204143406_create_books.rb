class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :category_id, null: false
      t.string :book_num
      t.string :title, null: false
      t.string :image_id, null: false
      t.string :author_name, null: false
      t.string :publisher, null: false
      t.text :memo

      t.timestamps
    end
  end
end
