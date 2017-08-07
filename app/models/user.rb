class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :location
  has_many :user_fields, dependent: :destroy
  has_many :fields, through: :user_fields, dependent: :destroy
  has_many :user_experiments, dependent: :destroy
  has_many :experiments, through: :user_experiments, dependent: :destroy
  has_many :user_kits, dependent: :destroy
  has_many :kits, through: :user_kits, dependent: :destroy
  has_many :kit_items, dependent: :destroy
  has_many :items, through: :kit_items, dependent: :destroy
  has_many :user_articles, dependent: :destroy
  has_many :articles, through: :user_articles, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_attached_file :propic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/default/:style/default_pic.png"
  validates_attachment_content_type :propic, content_type: /\Aimage\/.*\z/
  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }
  def full_name
    "#{fname} #{lname}".strip
  end
end