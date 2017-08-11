class Experiment < ApplicationRecord
  belongs_to :field
  has_many :kits, dependent: :destroy
  has_many :user_experiments, dependent: :destroy
  has_many :users, through: :user_experiments, dependent: :destroy
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/images/default_pic.svg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  def full_name
    	"#{fname} #{lname}".strip
  end
end
