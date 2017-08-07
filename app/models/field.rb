class Field < ApplicationRecord
	has_many :user_fields, dependent: :destroy
  	has_many :users, through: :user_fields, dependent: :destroy
  	has_many :experiments, dependent: :destroy
end
