class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :user_id
      t.boolean :public
      t.text :content

      t.timestamps
    end
	add_index :articles, :user_id
  end
end
