class CreateSudzibas < ActiveRecord::Migration[5.2]
  def change
    create_table :sudzibas do |t|
      t.string :title
      t.text :description
      t.string :customer
      t.string :user
      t.string :status

      t.timestamps
    end
  end
end
