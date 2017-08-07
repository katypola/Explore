class Kit < ApplicationRecord
  belongs_to :experiment
  has_many :kit_items, dependent: :destroy
  has_many :items, through: :kit_items, dependent: :destroy
  has_many :user_kits, dependent: :destroy
  has_many :users, through: :user_kits, dependent: :destroy
end
