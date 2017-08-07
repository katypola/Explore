class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.integer :number
      t.text :body
      t.attachment :image
      t.belongs_to :experiment, foreign_key: true

      t.timestamps
    end
  end
end
