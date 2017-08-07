class UserField < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_fields do |t| #, id: false
     t.belongs_to :user
     t.belongs_to :field
     t.timestamps
 	end
  end
end
