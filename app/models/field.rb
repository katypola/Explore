class Field < ApplicationRecord
	has_many :user_fields, dependent: :destroy
  	has_many :users, through: :user_fields
  	has_many :experiments
  	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/default_pic.svg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
