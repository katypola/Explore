class CreateKits < ActiveRecord::Migration[5.1]
  def change
    create_table :kits do |t|
      t.string :name
      t.attachment :image
      t.belongs_to :experiment, foreign_key: true

      t.timestamps
    end
  end
end
