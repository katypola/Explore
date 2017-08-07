class Item < ApplicationRecord
	has_many :kit_items, dependent: :destroy
	has_many :kits, through: :kit_items, dependent: :destroy
end
