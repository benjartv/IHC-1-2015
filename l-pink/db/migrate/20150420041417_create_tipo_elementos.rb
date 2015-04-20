class CreateTipoElementos < ActiveRecord::Migration
  def change
    create_table :tipo_elementos do |t|
      t.string :tipoElemento_nombre

      t.timestamps null: false
    end
  end
end
