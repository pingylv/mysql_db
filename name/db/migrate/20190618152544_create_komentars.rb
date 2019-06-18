class CreateKomentars < ActiveRecord::Migration[5.2]
  def change
    create_table :komentars do |t|
      t.string :commenter
      t.text :body
      t.references :sudziba, foreign_key: true

      t.timestamps
    end
  end
end
