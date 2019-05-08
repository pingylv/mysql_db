class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :vards
      t.string :uzvards
      t.string :personas_kods
      t.string :tel_nummurs
      t.string :epasts
      t.text :adrese
      t.text :piezimes

      t.timestamps
    end
  end
end
