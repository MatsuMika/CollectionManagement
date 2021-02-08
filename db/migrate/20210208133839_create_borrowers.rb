class CreateBorrowers < ActiveRecord::Migration[5.2]
  def change
    create_table :borrowers do |t|
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :address, null: false
      t.string :phone, null: false
      t.text :remarks

      t.timestamps
    end
  end
end
