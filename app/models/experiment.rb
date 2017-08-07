class Experiment < ApplicationRecord
  belongs_to :field
  has_many :user_experiments, dependent: :destroy
  has_many :users, through: :user_experiments, dependent: :destroy
end
