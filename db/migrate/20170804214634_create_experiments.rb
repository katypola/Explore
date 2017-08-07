class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :overview
      t.attachment :image
      t.belongs_to :field, foreign_key: true

      t.timestamps
    end
  end
end
