class CreatePiezimes < ActiveRecord::Migration[5.2]
  def change
    create_table :piezimes do |t|
      t.string :commenter
      t.text :body
      t.references :sudziba, foreign_key: true

      t.timestamps
    end
  end
end
