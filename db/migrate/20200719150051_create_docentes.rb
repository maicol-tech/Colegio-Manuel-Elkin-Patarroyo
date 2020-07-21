class CreateDocentes < ActiveRecord::Migration[6.0]
  def change
    create_table :docentes do |t|
      t.string :nombre
      t.string :apellido
      t.string :email

      t.timestamps
    end
  end
end
