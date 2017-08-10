class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :picture
      t.string :alink
      t.string :date
      t.text :overview

      t.timestamps
    end
  end
end
