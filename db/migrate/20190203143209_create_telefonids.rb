class CreateTelefonids < ActiveRecord::Migration[5.2]
  def change
    create_table :telefonids do |t|
      t.string :Nimi
      t.text :kirjeldus
      t.string :Sisemalu
      t.string :Muutmalu
      t.string :Protsessor
      t.string :Protsessori_kiirus

      t.timestamps
    end
  end
end
