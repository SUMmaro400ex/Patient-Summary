class CreateDiagnosticProcedures < ActiveRecord::Migration[5.0]
  def change
    create_table :diagnostic_procedures do |t|
      t.text :description
      t.datetime :moment

      t.timestamps
    end
  end
end
