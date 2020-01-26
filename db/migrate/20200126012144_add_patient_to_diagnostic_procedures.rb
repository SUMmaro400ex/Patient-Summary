class AddPatientToDiagnosticProcedures < ActiveRecord::Migration[5.0]
  def change
    add_reference :diagnostic_procedures, :patient, foreign_key: true
  end
end
