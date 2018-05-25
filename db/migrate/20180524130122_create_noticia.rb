class CreateNoticia < ActiveRecord::Migration[5.2]
  def change
    create_table :noticia do |t|
      t.boolean :titulo
      t.string :chapeu
      t.date :data
      t.text :texto
      t.string :fonte

      t.timestamps
    end
  end
end
