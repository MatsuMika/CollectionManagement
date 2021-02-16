class AddBorrowerNumToBorrowers < ActiveRecord::Migration[5.2]
  def change
    add_column :borrowers, :borrower_num, :string, null: false
  end
end
