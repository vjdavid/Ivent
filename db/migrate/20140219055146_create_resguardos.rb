class CreateResguardos < ActiveRecord::Migration
  def change
    create_table :resguardos do |t|
      t.string :no_resguardo
      t.string :concepto
      t.string :descripcion
      t.string :marca
      t.string :modelo
      t.string :imagen
      t.string :no_serie
      t.string :precio
      t.string :valor_actual
      t.string :ubicacion
      t.string :estado
      t.date :f_compra
      t.string :conectividad
      t.string :peso
      t.string :proveedor
      t.string :notas
      t.string :garantia

      t.timestamps
    end
  end
end
