class Book < ApplicationRecord
	attachment :image
	belongs_to :category, dependent: :destroy
end
