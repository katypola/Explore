class UserArticle < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_articles do |t| #, id: false
     t.belongs_to :user
     t.belongs_to :article
     t.timestamps
    end
  end
end
