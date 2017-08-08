class Post < ApplicationRecord
  belongs_to :user
  belongs_to :experiment
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/default_pic.svg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
