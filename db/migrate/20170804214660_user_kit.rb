class UserKit < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_kits do |t| #, id: false
     t.belongs_to :user
     t.belongs_to :kit
     t.timestamps
    end
  end
end
