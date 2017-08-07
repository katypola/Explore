class CreateApods < ActiveRecord::Migration[5.1]
  def change
    create_table :apods do |t|
      t.integer :apodid
      t.string :apodtitle
      t.string :apodpic
      t.string :hdapod
      t.string :cright
      t.string :apoddate
      t.text :expl
      t.string :mtype
      t.string :sversion

      t.timestamps
    end
  end
end
