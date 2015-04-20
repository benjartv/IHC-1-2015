class CreateActa < ActiveRecord::Migration
  def change
    create_table :acta do |t|
      t.integer :proyecto_id
      t.date :acta_fecha
      t.integer :acta_correlativo

      t.timestamps null: false
    end
  end
end
