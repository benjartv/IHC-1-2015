class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_inicio
      t.date :fecha_termino

      t.timestamps null: false
    end
  end
end
