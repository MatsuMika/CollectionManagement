class Lend < ApplicationRecord
	belongs_to :book, dependent: :destroy
	belongs_to :borrower, dependent: :destroy
end
