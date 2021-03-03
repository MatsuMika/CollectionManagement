class Book < ApplicationRecord
	attachment :image
	belongs_to :category, dependent: :destroy
	has_many :lends, dependent: :destroy
end
