class Borrower < ApplicationRecord
	has_many :lends, dependent: :destroy
end
