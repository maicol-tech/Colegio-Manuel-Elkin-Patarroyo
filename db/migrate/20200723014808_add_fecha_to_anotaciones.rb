class AddFechaToAnotaciones < ActiveRecord::Migration[6.0]
  def change
    add_column :anotaciones, :fecha, :date
  end
end
