class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :proyecto_nombre
      t.text :proyecto_descripcion
      t.date :proyecto_inicio
      t.date :proyecto_final

      t.timestamps null: false
    end
  end
end
