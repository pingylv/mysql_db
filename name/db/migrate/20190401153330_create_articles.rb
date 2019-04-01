class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :customer
      t.string :user

      t.timestamps
    end
  end
end
