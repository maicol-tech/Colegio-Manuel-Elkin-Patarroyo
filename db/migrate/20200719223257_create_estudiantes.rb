class CreateEstudiantes < ActiveRecord::Migration[6.0]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :direccion
      t.string :correo

      t.timestamps
    end
  end
end
