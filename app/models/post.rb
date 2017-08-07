class Post < ApplicationRecord
  belongs_to :user
  belongs_to :experiment
  has_many :comments, dependent: :destroy
end
