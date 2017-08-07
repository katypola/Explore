class KitItem < ActiveRecord::Migration[5.1]
  def change
  	create_table :kit_items do |t| #, id: false
     t.belongs_to :kit
     t.belongs_to :item
     t.timestamps
    end
  end
end
