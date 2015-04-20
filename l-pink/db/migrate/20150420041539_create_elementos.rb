class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.integer :tipoElemento_id
      t.integer :tema_id
      t.text :elemento_descripcion
      t.date :elemento_fechaInicio
      t.date :elemento_fechaFinal

      t.timestamps null: false
    end
  end
end
