class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.integer :acta_id
      t.string :tema_nombre
      t.text :tema_descripcion
      t.string :tema_estado
      t.integer :tema_correlativo

      t.timestamps null: false
    end
  end
end
