class UserExperiment < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_experiments do |t| #, id: false
     t.belongs_to :user
     t.belongs_to :experiment
     t.timestamps
    end
  end
end
