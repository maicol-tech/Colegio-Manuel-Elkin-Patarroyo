class CreateAnotaciones < ActiveRecord::Migration[6.0]
  def change
    create_table :anotaciones do |t|
      t.string :titulo
      t.references :estudiante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
